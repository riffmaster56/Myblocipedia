class Wiki < ActiveRecord::Base
  resourcify
  belongs_to :user
end
