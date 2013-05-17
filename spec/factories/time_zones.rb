# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :time_zone do
    code "MyString"
    name "MyString"
    offset "9.99"
  end
end
