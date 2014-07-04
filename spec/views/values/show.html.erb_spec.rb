require 'rails_helper'

RSpec.describe "values/show", :type => :view do
  before(:each) do
    @value = assign(:value, Value.create!(
      :exact_value => "Exact Value",
      :standard_value => "Standard Value",
      :accepted => false,
      :field => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Exact Value/)
    expect(rendered).to match(/Standard Value/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
