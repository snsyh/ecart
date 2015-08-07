class SmallCategoriesController < ApplicationController
  before_action :set_small_category, only: [:show, :edit, :update, :destroy]
  # GET /small_categories
  # GET /small_categories.json
  def index
    @small_categories = SmallCategory.all
  end

  # GET /small_categories/1
  # GET /small_categories/1.json
  def show
  end

  # GET /small_categories/new
  def new
    if params[:small_category].blank?
      @small_category = SmallCategory.new
      @middle_categories = []
    else
      @req_category = params[:small_category]
      @small_category = SmallCategory.new(:large_category_code => @req_category[:large_category_code], :middle_category_code => nil, :small_category_code => @req_category[:small_category_code], :small_category_name => @req_category[:small_category_name], :display_order => @req_category[:display_order])
      @middle_categories = MiddleCategory.belongs_to_select_category(params[:small_category])
    end
  end

  # GET /small_categories/1/edit
  def edit
    @middle_categories = MiddleCategory.belongs_to_select_category(@small_category)
  end

  # POST /small_categories
  # POST /small_categories.json
  def create
    @small_category = SmallCategory.new(small_category_params)

    respond_to do |format|
      if @small_category.save
        format.html { redirect_to @small_category, notice: 'Small category was successfully created.' }
        format.json { render :show, status: :created, location: @small_category }
      else
        format.html { render :new }
        format.json { render json: @small_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /small_categories/1
  # PATCH/PUT /small_categories/1.json
  def update
    respond_to do |format|
      if @small_category.update(small_category_params)
        format.html { redirect_to @small_category, notice: 'Small category was successfully updated.' }
        format.json { render :show, status: :ok, location: @small_category }
      else
        format.html { render :edit }
        format.json { render json: @small_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /small_categories/1
  # DELETE /small_categories/1.json
  def destroy
    @small_category.destroy
    respond_to do |format|
      format.html { redirect_to small_categories_url, notice: 'Small category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_small_category
    @small_category = SmallCategory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def small_category_params
    params.require(:small_category).permit(:large_category_code, :middle_category_code, :small_category_code, :small_category_name, :display_order)
  end
end
