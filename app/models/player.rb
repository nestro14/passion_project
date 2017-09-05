class Player < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rankings
end
