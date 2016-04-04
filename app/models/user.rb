class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  mount_uploader :attachment, ImageUploader

  validates :email, :password, presence: true
  
  validates :email, uniqueness: {case_insensitive: true, allow_blank: true}

  def name
  	first_name + " " + last_name
  end
end
