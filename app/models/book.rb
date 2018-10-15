class Book < ApplicationRecord
  has_many :sales
  has_many :users, through: :sales
  belongs_to :author
end
