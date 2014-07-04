require 'rails_helper'

RSpec.describe "fields/edit", :type => :view do
  before(:each) do
    @field = assign(:field, Field.create!(
      :field_name => "MyString"
    ))
  end

  it "renders the edit field form" do
    render

    assert_select "form[action=?][method=?]", field_path(@field), "post" do

      assert_select "input#field_field_name[name=?]", "field[field_name]"
    end
  end
end
