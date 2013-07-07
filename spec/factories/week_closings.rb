# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :week_closing do
    time_table_id 1
    weekday 1
    type ""
  end
end
