require 'spec_helper'

describe "forecasts/show" do
  before(:each) do
    @forecast = assign(:forecast, stub_model(Forecast,
      :category_id => 1,
      :year => 2,
      :month => 3,
      :value => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/1.5/)
  end
end
