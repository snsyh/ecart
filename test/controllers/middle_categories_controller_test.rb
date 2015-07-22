require 'test_helper'

class MiddleCategoriesControllerTest < ActionController::TestCase
  setup do
    @middle_category = middle_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:middle_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create middle_category" do
    assert_difference('MiddleCategory.count') do
      post :create, middle_category: { display_order: @middle_category.display_order, middle_category_code: @middle_category.middle_category_code, middle_category_name: @middle_category.middle_category_name }
    end

    assert_redirected_to middle_category_path(assigns(:middle_category))
  end

  test "should show middle_category" do
    get :show, id: @middle_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @middle_category
    assert_response :success
  end

  test "should update middle_category" do
    patch :update, id: @middle_category, middle_category: { display_order: @middle_category.display_order, middle_category_code: @middle_category.middle_category_code, middle_category_name: @middle_category.middle_category_name }
    assert_redirected_to middle_category_path(assigns(:middle_category))
  end

  test "should destroy middle_category" do
    assert_difference('MiddleCategory.count', -1) do
      delete :destroy, id: @middle_category
    end

    assert_redirected_to middle_categories_path
  end
end
