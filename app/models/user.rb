class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum role: { manager: 0, employee: 1 }

  has_one :purchase

  scope :search,->(term){ where("name like ?", "#{term}%")}
end
