class Survey < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :completed_survey
  has_many :questions
#  has_many :answers, through: :questions
  #has_many :answers, :through => :questions, :source => :answerable, :source_type => 'through_survey'

  def self.new_survey(surveys, user)
    p surveys
    p user
    # surveys.each do |survey|
    #   Survey.new(name: survey['name'] )
    # end
  end

  def self.user_created(user)
    Survey.where(user_id: user.id)
  end
end
