require 'test_helper'

class StakeholdersControllerTest < ActionController::TestCase
  setup do
    @stakeholder = stakeholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stakeholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stakeholder" do
    assert_difference('Stakeholder.count') do
      post :create, stakeholder: { description: @stakeholder.description, is_client: @stakeholder.is_client, is_supplier: @stakeholder.is_supplier, name: @stakeholder.name }
    end

    assert_redirected_to stakeholder_path(assigns(:stakeholder))
  end

  test "should show stakeholder" do
    get :show, id: @stakeholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stakeholder
    assert_response :success
  end

  test "should update stakeholder" do
    patch :update, id: @stakeholder, stakeholder: { description: @stakeholder.description, is_client: @stakeholder.is_client, is_supplier: @stakeholder.is_supplier, name: @stakeholder.name }
    assert_redirected_to stakeholder_path(assigns(:stakeholder))
  end

  test "should destroy stakeholder" do
    assert_difference('Stakeholder.count', -1) do
      delete :destroy, id: @stakeholder
    end

    assert_redirected_to stakeholders_path
  end
end
