# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    value "MyString"
    restaurant_id 1
    contact_type_id 1
  end
end
