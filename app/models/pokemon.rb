class Pokemon < ApplicationRecord
  # before_save :set_default
  validates :name, presence: true

end
