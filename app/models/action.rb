class Action < ActiveRecord::Base
  belongs_to :choice
  has_many :templates
end
