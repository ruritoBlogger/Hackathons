class House < ApplicationRecord

  validates :user_name, {presence: true}
  validates :area, {presence: true}
  validates :house_name, {presence: true}
  validates :canVisit, {presence: true}
  validates :caution, {presence: true}

end
