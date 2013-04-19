class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :zip, :name
  # attr_accessible :title, :body
  validates_format_of :zip, :with => /^\d{5}$/, :message => "needs to be a five-digit US zip code"

  before_create :get_reps

  def get_reps
    c = Congress.new
    reps = c.legislators_locate(zip)
    reps["results"].each do |r|
      case r[:state_rank]
      when nil
        self.rep = r[:bioguide_id]
      when "junior"
        self.jr_sen = r[:bioguide_id]
      when "senior"
        self.sr_sen = r[:bioguide_id]
      end
    end
  end
end
