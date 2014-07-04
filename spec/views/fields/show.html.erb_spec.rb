require 'rails_helper'

RSpec.describe "fields/show", :type => :view do
  before(:each) do
    @field = assign(:field, Field.create!(
      :field_name => "Field Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Field Name/)
  end
end
