require 'spec_helper'

describe "forecasts/edit" do
  before(:each) do
    @forecast = assign(:forecast, stub_model(Forecast,
      :category_id => 1,
      :year => 1,
      :month => 1,
      :value => 1.5
    ))
  end

  it "renders the edit forecast form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", forecast_path(@forecast), "post" do
      assert_select "input#forecast_category_id[name=?]", "forecast[category_id]"
      assert_select "input#forecast_year[name=?]", "forecast[year]"
      assert_select "input#forecast_month[name=?]", "forecast[month]"
      assert_select "input#forecast_value[name=?]", "forecast[value]"
    end
  end
end
