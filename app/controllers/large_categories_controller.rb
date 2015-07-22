class LargeCategoriesController < ApplicationController
  before_action :set_large_category, only: [:show, :edit, :update, :destroy]

  # GET /large_categories
  # GET /large_categories.json
  def index
    @large_categories = LargeCategory.all
  end

  # GET /large_categories/1
  # GET /large_categories/1.json
  def show
  end

  # GET /large_categories/new
  def new
    @large_category = LargeCategory.new
  end

  # GET /large_categories/1/edit
  def edit
  end

  # POST /large_categories
  # POST /large_categories.json
  def create
    @large_category = LargeCategory.new(large_category_params)

    respond_to do |format|
      if @large_category.save
        format.html { redirect_to @large_category, notice: 'Large category was successfully created.' }
        format.json { render :show, status: :created, location: @large_category }
      else
        format.html { render :new }
        format.json { render json: @large_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /large_categories/1
  # PATCH/PUT /large_categories/1.json
  def update
    respond_to do |format|
      if @large_category.update(large_category_params)
        format.html { redirect_to @large_category, notice: 'Large category was successfully updated.' }
        format.json { render :show, status: :ok, location: @large_category }
      else
        format.html { render :edit }
        format.json { render json: @large_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /large_categories/1
  # DELETE /large_categories/1.json
  def destroy
    @large_category.destroy
    respond_to do |format|
      format.html { redirect_to large_categories_url, notice: 'Large category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_large_category
      @large_category = LargeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def large_category_params
      params.require(:large_category).permit(:large_category_code, :large_category_name, :display_order)
    end
end
