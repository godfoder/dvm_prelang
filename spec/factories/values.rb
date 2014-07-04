# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :value do
    exact_value "MyString"
    standard_value "MyString"
    accepted false
    field nil
  end
end
