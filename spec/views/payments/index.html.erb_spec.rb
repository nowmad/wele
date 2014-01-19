require 'spec_helper'

describe "payments/index" do
  before(:each) do
    assign(:payments, [
      stub_model(Payment,
        :name => "Name",
        :stakeholder_id => 1,
        :description => "MyText",
        :category_id => 2,
        :status => false,
        :cost_center_id => 3,
        :account_id => 4
      ),
      stub_model(Payment,
        :name => "Name",
        :stakeholder_id => 1,
        :description => "MyText",
        :category_id => 2,
        :status => false,
        :cost_center_id => 3,
        :account_id => 4
      )
    ])
  end

  it "renders a list of payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
