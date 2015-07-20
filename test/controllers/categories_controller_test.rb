require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  setup do
    @category = categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, category: { large_category_code: @category.large_category_code, large_category_name: @category.large_category_name, middle_category_code: @category.middle_category_code, middle_category_name: @category.middle_category_name, small_category_code: @category.small_category_code, small_category_name: @category.small_category_name }
    end

    assert_redirected_to category_path(assigns(:category))
  end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category
    assert_response :success
  end

  test "should update category" do
    patch :update, id: @category, category: { large_category_code: @category.large_category_code, large_category_name: @category.large_category_name, middle_category_code: @category.middle_category_code, middle_category_name: @category.middle_category_name, small_category_code: @category.small_category_code, small_category_name: @category.small_category_name }
    assert_redirected_to category_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to categories_path
  end
end
