class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
    @large_categories = LargeCategory.all
    @middle_categories = MiddleCategory.all
    @small_categories = SmallCategory.all
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:item_code, :item_name, :small_category_code, :sale_flg_id, :item_type_id, :delivery_method_code, :stock_management_type_id, :sale_price, :sale_stock_quantity, :oneshot_order_limit, :sale_datetime_from, :sale_datetime_to, :reservation_price, :reservation_stock_quantity, :oneshot_reservation_limit, :reservation_datetime_from, :reservation_datetime_to, :discount_price, :discount_datetime_from, :discount_datetime_to, :color_code, :size_code, :jan_code, :brand_code, :maker_code, :picking_days, :release_date, :targeted_date_comment, :shipping_time_comment, :bank_wire, :cash_on_delivery, :credit_card, :convenience)
    end
end
