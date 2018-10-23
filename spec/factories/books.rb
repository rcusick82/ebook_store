require 'faker'

FactoryBot.define  do
  factory :book do
    #title can be anything
    title { Faker::Book.title}
    price { rand(1..99) }
    author { create :author }
  end
end
