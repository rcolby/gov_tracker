class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :zip, :f_name, :l_name
  # attr_accessible :title, :body
  validates_format_of :zip, :with => /^\d{5}$/, :message => "needs to be a five-digit US zip code"
end
