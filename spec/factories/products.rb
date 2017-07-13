FactoryGirl.define do

  num =(Product.last.try(:id) || 0) + 1;

  factory :product do
    sequence(:nombre) { |n| "#{Faker::GameOfThrones.city} #{n+num}" }
    category { create(:category) }
  end
end
