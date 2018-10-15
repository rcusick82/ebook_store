class Book < ApplicationRecord
  has_many :sales
  belongs_to :authors, through: :sales
end
