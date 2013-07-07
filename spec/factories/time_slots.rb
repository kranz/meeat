# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :time_slot do
    time_table_id 1
    name "MyString"
    slot_position 1
    UTC_slot_position 1
    from "2013-05-18 12:54:14"
    to "2013-05-18 12:54:14"
  end
end
