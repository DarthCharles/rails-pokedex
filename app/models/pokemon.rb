class Pokemon < ApplicationRecord
  before_save :set_default
  validates :name, presence: true


  protected
    def set_default
     self.img_url = "https://goo.gl/nCN7Gx" if img_url.blank?
   end
end
