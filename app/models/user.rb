class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :requests
  has_many :offers

  mount_uploader :avatar, AvatarUploader

  scope :last_x_days, -> (x) { where(created_at: x.days.ago..Time.zone.now) }

end
