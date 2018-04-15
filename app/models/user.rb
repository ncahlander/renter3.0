class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :viewers
  has_many :profiles, through: :viewers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable, :confirmable,
  #        :recoverable, :rememberable, :trackable, :validatable


  # don't think we need this twice, but left it commented just in case!! - Lucca
  # # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable, :confirmable,
  #        :recoverable, :rememberable, :trackable, :validatable


  def self.search(search)
    where("email LIKE ? OR username LIKE ? OR firstName LIKE ? OR lastName LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
