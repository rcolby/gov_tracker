class HomeController < ApplicationController
  def index
    if current_user
      @rep = Legislator.where(:bioguide_id => current_user.rep).first
      @sr_sen = Legislator.where(:bioguide_id => current_user.sr_sen).first
      @jr_sen = Legislator.where(:bioguide_id => current_user.jr_sen).first
    end
    c = Congress.new
    @upcoming = c.upcoming_bills[:results]
  end
end
