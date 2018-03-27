class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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
    where("email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
