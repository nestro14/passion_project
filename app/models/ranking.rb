class Ranking < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :player
end
