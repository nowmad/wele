require 'spec_helper'

describe "forecasts/index" do
  before(:each) do
    assign(:forecasts, [
      stub_model(Forecast,
        :category_id => 1,
        :year => 2,
        :month => 3,
        :value => 1.5
      ),
      stub_model(Forecast,
        :category_id => 1,
        :year => 2,
        :month => 3,
        :value => 1.5
      )
    ])
  end

  it "renders a list of forecasts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
