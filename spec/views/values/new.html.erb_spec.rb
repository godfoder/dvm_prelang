require 'rails_helper'

RSpec.describe "values/new", :type => :view do
  before(:each) do
    assign(:value, Value.new(
      :exact_value => "MyString",
      :standard_value => "MyString",
      :accepted => false,
      :field => nil
    ))
  end

  it "renders new value form" do
    render

    assert_select "form[action=?][method=?]", values_path, "post" do

      assert_select "input#value_exact_value[name=?]", "value[exact_value]"

      assert_select "input#value_standard_value[name=?]", "value[standard_value]"

      assert_select "input#value_accepted[name=?]", "value[accepted]"

      assert_select "input#value_field_id[name=?]", "value[field_id]"
    end
  end
end
