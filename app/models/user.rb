# == Schema Information
# Schema version: 20101205223343
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base

  attr_accessor :password
  
  attr_accessible :name , :email , :password, :password_confirmation
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name , :presence   => true ,
                    :length     => {:within => 4..50}
  validates :email, :presence   => true,
                    :format     => {:with=>email_regex},
                    :uniqueness => true
 
  validates :password,:presence     => true,
                      :length       => {:within => 6..40},
                      :confirmation => true


  scope :is_admin? , where(:admin=>true)

    
  before_save :encrypt_password


  private # below all the private methods are stored

  def encrypt_password
    self.encrypted_password = encrypt(password)
  end

  def encrypt
    "hello world" #temp solution
  end


end
