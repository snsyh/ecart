class GroupItemsController < ApplicationController
  before_action :set_group_item, only: [:show, :edit, :update, :destroy]

  # GET /group_items
  # GET /group_items.json
  def index
    @group_items = GroupItem.all
  end

  # GET /group_items/1
  # GET /group_items/1.json
  def show
  end

  # GET /group_items/new
  def new
    @group_item = GroupItem.new
  end

  # GET /group_items/1/edit
  def edit
  end

  # POST /group_items
  # POST /group_items.json
  def create
    @group_item = GroupItem.new(group_item_params)

    respond_to do |format|
      if @group_item.save
        format.html { redirect_to @group_item, notice: 'Group item was successfully created.' }
        format.json { render :show, status: :created, location: @group_item }
      else
        format.html { render :new }
        format.json { render json: @group_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_items/1
  # PATCH/PUT /group_items/1.json
  def update
    respond_to do |format|
      if @group_item.update(group_item_params)
        format.html { redirect_to @group_item, notice: 'Group item was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_item }
      else
        format.html { render :edit }
        format.json { render json: @group_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_items/1
  # DELETE /group_items/1.json
  def destroy
    @group_item.destroy
    respond_to do |format|
      format.html { redirect_to group_items_url, notice: 'Group item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_item
      @group_item = GroupItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_item_params
      params.require(:group_item).permit(:group_item_code, :item_code)
    end
end
