class Template < ActiveRecord::Base
  has_one :choice
  belongs_to :action
end
