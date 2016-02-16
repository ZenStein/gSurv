class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :surveys
  has_many :completed_surveys
  validates :email, uniqueness: true
  validates :username, uniqueness: true

  def self.authenticate(email, password)
    #User.all
    User.find_by(email: email, password: password)
    #if user.id > 0
    #  return user
    #end
    #default_obj = {id: 0, errors: 'did not authenticate', }
  end
end
