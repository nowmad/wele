require 'spec_helper'

describe "payments/edit" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :name => "MyString",
      :stakeholder_id => 1,
      :description => "MyText",
      :category_id => 1,
      :status => false,
      :cost_center_id => 1,
      :account_id => 1
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do
      assert_select "input#payment_name[name=?]", "payment[name]"
      assert_select "input#payment_stakeholder_id[name=?]", "payment[stakeholder_id]"
      assert_select "textarea#payment_description[name=?]", "payment[description]"
      assert_select "input#payment_category_id[name=?]", "payment[category_id]"
      assert_select "input#payment_status[name=?]", "payment[status]"
      assert_select "input#payment_cost_center_id[name=?]", "payment[cost_center_id]"
      assert_select "input#payment_account_id[name=?]", "payment[account_id]"
    end
  end
end
