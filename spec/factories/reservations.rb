# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    restaurant_id 1
    date "2013-05-15 16:56:56"
    code "MyString"
    conference_id 1
    confirmation "MyString"
    confirmation "2013-05-15"
  end
end
