FactoryGirl.define do
  num =(User.last.try(:id) || 0) + 1;

  factory :user do
    sequence(:email) { |n|  "user#{num + n}@company.com" }
    password 'passpass'
    password_confirmation 'passpass'
    nombre Faker::Name.name
    sequence(:rut) { |n|  "#{num + n}" }
  end
end
