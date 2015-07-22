require 'test_helper'

class LargeCategoriesControllerTest < ActionController::TestCase
  setup do
    @large_category = large_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:large_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create large_category" do
    assert_difference('LargeCategory.count') do
      post :create, large_category: { display_order: @large_category.display_order, large_category_code: @large_category.large_category_code, large_category_name: @large_category.large_category_name }
    end

    assert_redirected_to large_category_path(assigns(:large_category))
  end

  test "should show large_category" do
    get :show, id: @large_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @large_category
    assert_response :success
  end

  test "should update large_category" do
    patch :update, id: @large_category, large_category: { display_order: @large_category.display_order, large_category_code: @large_category.large_category_code, large_category_name: @large_category.large_category_name }
    assert_redirected_to large_category_path(assigns(:large_category))
  end

  test "should destroy large_category" do
    assert_difference('LargeCategory.count', -1) do
      delete :destroy, id: @large_category
    end

    assert_redirected_to large_categories_path
  end
end
