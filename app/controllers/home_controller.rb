class HomeController < ApplicationController
  require 'json'
  require 'open-uri'

  def index
    if current_user
      @rep = Legislator.where(:bioguide_id => current_user.rep).first
      @sr_sen = Legislator.where(:bioguide_id => current_user.sr_sen).first
      @jr_sen = Legislator.where(:bioguide_id => current_user.jr_sen).first
    end
    c = Congress.new
    @upcoming = c.upcoming_bills[:results]
    @floor_updates = c.floor_updates[:results]
  end

  def detail
    c = Congress.new
    @legislator = Legislator.find_by_bioguide_id(params[:bioguide_id])
    @committees = c.committees(:member_ids => @legislator.bioguide_id)[:results]
    @birthdate = Time.parse(@legislator.birthdate).strftime("%A, %B %e, %Y")
    @mp_key = ENV['MAPQUEST_KEY']

    unless @legislator.twitter_id.nil?
      file = open("http://api.twitter.com/1/statuses/user_timeline.json?screen_name=#{@legislator.twitter_id}")
      @twitter_feed = JSON.parse(file.read)
    end

    case @legislator.party
      when 'D'
        @party = "Democrat"
      when 'R'
        @party = "Republican"
      when 'I'
        @party = "Independent"
      else
        @party = "Unknown"
    end

    case @legislator.title
      when "Sen"
        @title = "Senator"
      when "Rep"
        @title = "Representative"
      else
        @title = "Delegate"
    end

    if current_user
      @rep = Legislator.where(:bioguide_id => current_user.rep).first
      @sr_sen = Legislator.where(:bioguide_id => current_user.sr_sen).first
      @jr_sen = Legislator.where(:bioguide_id => current_user.jr_sen).first
    end


  end

  def compose_email
    #stub
  end

  def send_email
    @to = params[:to]
    @subject = params[:subject]
    Postman.form_email(@to, @subject, params[:body]).deliver
  end
end
