FactoryBot.define do
    factory :user do
      name { "user1" }
      email { "user@gmail.com" }
      password {"123456"}
      type {"writer"}
    end
  end
  