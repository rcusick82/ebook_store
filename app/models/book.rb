class Book < ApplicationRecord
belongs_to :authors, through:sales
has_many :sales 
end
