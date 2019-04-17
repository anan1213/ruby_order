class Url < ApplicationRecord
  validates :title, {presence: true}
  validates :category, {presence: true}
  validates :url, {presence: true}



end
