require 'test_helper'

class SmallCategoriesControllerTest < ActionController::TestCase
  setup do
    @small_category = small_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:small_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create small_category" do
    assert_difference('SmallCategory.count') do
      post :create, small_category: { display_order: @small_category.display_order, small_category_code: @small_category.small_category_code, smalle_category_name: @small_category.smalle_category_name }
    end

    assert_redirected_to small_category_path(assigns(:small_category))
  end

  test "should show small_category" do
    get :show, id: @small_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @small_category
    assert_response :success
  end

  test "should update small_category" do
    patch :update, id: @small_category, small_category: { display_order: @small_category.display_order, small_category_code: @small_category.small_category_code, smalle_category_name: @small_category.smalle_category_name }
    assert_redirected_to small_category_path(assigns(:small_category))
  end

  test "should destroy small_category" do
    assert_difference('SmallCategory.count', -1) do
      delete :destroy, id: @small_category
    end

    assert_redirected_to small_categories_path
  end
end
