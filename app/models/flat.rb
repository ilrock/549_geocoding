class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validate presence_of: :address

  # ActiveRecord callbacks
  # after_create -> after a record is created in the Flats table
  # after_save -> after a record is created/updated in the Flats table
  # after_validation -> 
  # after_destroy
end
