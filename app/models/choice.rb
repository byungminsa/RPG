class Choice < ActiveRecord::Base
  belongs_to :template
  has_many :actions
end
