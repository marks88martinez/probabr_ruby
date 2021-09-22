class Purchase < ApplicationRecord
  belongs_to :user
  is_impressionable
  enum status: { requested: 0, processing: 1, cancelled: 2 , closed: 3  }
  scope :search,->(term){ where("buyer_name like ?", "#{term}%")}

  has_many :notes, dependent: :destroy


  accepts_nested_attributes_for :notes, reject_if: :all_blank, allow_destroy: true
  
end
