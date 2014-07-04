require 'rails_helper'

RSpec.describe "values/index", :type => :view do
  before(:each) do
    assign(:values, [
      Value.create!(
        :exact_value => "Exact Value",
        :standard_value => "Standard Value",
        :accepted => false,
        :field => nil
      ),
      Value.create!(
        :exact_value => "Exact Value",
        :standard_value => "Standard Value",
        :accepted => false,
        :field => nil
      )
    ])
  end

  it "renders a list of values" do
    render
    assert_select "tr>td", :text => "Exact Value".to_s, :count => 2
    assert_select "tr>td", :text => "Standard Value".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
