class Person < ActiveRecord::Base
  attr_accessible :name, :description, :image_name
  has_many :votes
  
  scope :by_name, lambda { |name| where(:name => name) }

  def vote_percentage
    if Vote.count == 0
      return 0
    else
      votes.count / Vote.count.to_f
    end
  end
end
