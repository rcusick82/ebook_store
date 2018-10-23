FactoryBot.define do
  factory :user do
    name { "Ryan" }
    email { "example@example.com" }
    password { "example" }

      factory :author do
        author { true }
      end

      factory :admin do
        admin { true }
      end
  end
end
