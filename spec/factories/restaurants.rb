# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    name "MyString"
    address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    country_id 1
    time_zone_id 1
  end
end
