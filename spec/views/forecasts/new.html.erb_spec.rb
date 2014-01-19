require 'spec_helper'

describe "forecasts/new" do
  before(:each) do
    assign(:forecast, stub_model(Forecast,
      :category_id => 1,
      :year => 1,
      :month => 1,
      :value => 1.5
    ).as_new_record)
  end

  it "renders new forecast form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", forecasts_path, "post" do
      assert_select "input#forecast_category_id[name=?]", "forecast[category_id]"
      assert_select "input#forecast_year[name=?]", "forecast[year]"
      assert_select "input#forecast_month[name=?]", "forecast[month]"
      assert_select "input#forecast_value[name=?]", "forecast[value]"
    end
  end
end
