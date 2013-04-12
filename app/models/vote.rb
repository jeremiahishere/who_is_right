class Vote < ActiveRecord::Base
  attr_accessible :person_id, :weight, :ip_address
  belongs_to :person

end
