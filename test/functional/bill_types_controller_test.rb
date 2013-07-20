require 'test_helper'

class BillTypesControllerTest < ActionController::TestCase
  setup do
    @bill_type = bill_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_type" do
    assert_difference('BillType.count') do
      post :create, bill_type: @bill_type.attributes
    end

    assert_redirected_to bill_type_path(assigns(:bill_type))
  end

  test "should show bill_type" do
    get :show, id: @bill_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_type.to_param
    assert_response :success
  end

  test "should update bill_type" do
    put :update, id: @bill_type.to_param, bill_type: @bill_type.attributes
    assert_redirected_to bill_type_path(assigns(:bill_type))
  end

  test "should destroy bill_type" do
    assert_difference('BillType.count', -1) do
      delete :destroy, id: @bill_type.to_param
    end

    assert_redirected_to bill_types_path
  end
end
