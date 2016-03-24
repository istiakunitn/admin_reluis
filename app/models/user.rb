class User < ActiveRecord::Base
  has_attached_file :profile_picture, styles: {medium: "300x300>"}
  validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\Z/
  belongs_to :institution

  validates :username, :institution, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
