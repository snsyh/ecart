require 'test_helper'

class DeliveryMethodsControllerTest < ActionController::TestCase
  setup do
    @delivery_method = delivery_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_method" do
    assert_difference('DeliveryMethod.count') do
      post :create, delivery_method: { delivery_method_code: @delivery_method.delivery_method_code, delivery_method_name: @delivery_method.delivery_method_name, indivisually_calicurate_flg: @delivery_method.indivisually_calicurate_flg, shipping_charge_threshold_prices: @delivery_method.shipping_charge_threshold_prices }
    end

    assert_redirected_to delivery_method_path(assigns(:delivery_method))
  end

  test "should show delivery_method" do
    get :show, id: @delivery_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_method
    assert_response :success
  end

  test "should update delivery_method" do
    patch :update, id: @delivery_method, delivery_method: { delivery_method_code: @delivery_method.delivery_method_code, delivery_method_name: @delivery_method.delivery_method_name, indivisually_calicurate_flg: @delivery_method.indivisually_calicurate_flg, shipping_charge_threshold_prices: @delivery_method.shipping_charge_threshold_prices }
    assert_redirected_to delivery_method_path(assigns(:delivery_method))
  end

  test "should destroy delivery_method" do
    assert_difference('DeliveryMethod.count', -1) do
      delete :destroy, id: @delivery_method
    end

    assert_redirected_to delivery_methods_path
  end
end
