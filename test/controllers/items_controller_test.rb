require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { _from: @item._from, _from: @item._from, _from: @item._from, _to: @item._to, _to: @item._to, _to: @item._to, average_review_score: @item.average_review_score, bank_wire: @item.bank_wire, brand_code: @item.brand_code, cash_on_delivery: @item.cash_on_delivery, color_code: @item.color_code, convenience: @item.convenience, credit_card: @item.credit_card, delivery_method_code: @item.delivery_method_code, discount_datetime: @item.discount_datetime, discount_datetime: @item.discount_datetime, discount_price: @item.discount_price, item_code: @item.item_code, item_name: @item.item_name, item_status: @item.item_status, jan_code: @item.jan_code, large_category_code: @item.large_category_code, maker_code: @item.maker_code, middle_category_code: @item.middle_category_code, oneshot_order_limit: @item.oneshot_order_limit, oneshot_reservation_limit: @item.oneshot_reservation_limit, picking_days: @item.picking_days, release_date: @item.release_date, reservation_datetime: @item.reservation_datetime, reservation_datetime: @item.reservation_datetime, reservation_price: @item.reservation_price, reservation_stock_quantity: @item.reservation_stock_quantity, sale_datetime: @item.sale_datetime, sale_datetime: @item.sale_datetime, sale_flg: @item.sale_flg, sale_price: @item.sale_price, sale_stock_quantity: @item.sale_stock_quantity, shipping_time_comment: @item.shipping_time_comment, size_code: @item.size_code, small_category_code: @item.small_category_code, stock_management_type: @item.stock_management_type, targeted_date_comment: @item.targeted_date_comment }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { _from: @item._from, _from: @item._from, _from: @item._from, _to: @item._to, _to: @item._to, _to: @item._to, average_review_score: @item.average_review_score, bank_wire: @item.bank_wire, brand_code: @item.brand_code, cash_on_delivery: @item.cash_on_delivery, color_code: @item.color_code, convenience: @item.convenience, credit_card: @item.credit_card, delivery_method_code: @item.delivery_method_code, discount_datetime: @item.discount_datetime, discount_datetime: @item.discount_datetime, discount_price: @item.discount_price, item_code: @item.item_code, item_name: @item.item_name, item_status: @item.item_status, jan_code: @item.jan_code, large_category_code: @item.large_category_code, maker_code: @item.maker_code, middle_category_code: @item.middle_category_code, oneshot_order_limit: @item.oneshot_order_limit, oneshot_reservation_limit: @item.oneshot_reservation_limit, picking_days: @item.picking_days, release_date: @item.release_date, reservation_datetime: @item.reservation_datetime, reservation_datetime: @item.reservation_datetime, reservation_price: @item.reservation_price, reservation_stock_quantity: @item.reservation_stock_quantity, sale_datetime: @item.sale_datetime, sale_datetime: @item.sale_datetime, sale_flg: @item.sale_flg, sale_price: @item.sale_price, sale_stock_quantity: @item.sale_stock_quantity, shipping_time_comment: @item.shipping_time_comment, size_code: @item.size_code, small_category_code: @item.small_category_code, stock_management_type: @item.stock_management_type, targeted_date_comment: @item.targeted_date_comment }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
