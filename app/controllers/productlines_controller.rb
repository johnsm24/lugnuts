class ProductlinesController < ApplicationController
  before_action :set_productline, only: [:show, :edit, :update, :destroy]

  # GET /productlines
  # GET /productlines.json
  def index
    @productlines = Productline.all
  end

  # GET /productlines/1
  # GET /productlines/1.json
  def show
  end

  # GET /productlines/new
  def new
    @productline = Productline.new
  end

  # GET /productlines/1/edit
  def edit
  end

  # POST /productlines
  # POST /productlines.json
  def create
    @productline = Productline.new(productline_params)

    respond_to do |format|
      if @productline.save
        format.html { redirect_to @productline, notice: 'Productline was successfully created.' }
        format.json { render :show, status: :created, location: @productline }
      else
        format.html { render :new }
        format.json { render json: @productline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productlines/1
  # PATCH/PUT /productlines/1.json
  def update
    respond_to do |format|
      if @productline.update(productline_params)
        format.html { redirect_to @productline, notice: 'Productline was successfully updated.' }
        format.json { render :show, status: :ok, location: @productline }
      else
        format.html { render :edit }
        format.json { render json: @productline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productlines/1
  # DELETE /productlines/1.json
  def destroy
    @productline.destroy
    respond_to do |format|
      format.html { redirect_to productlines_url, notice: 'Productline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productline
      @productline = Productline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productline_params
      params.require(:productline).permit(:textDescription, :htmlDescription, :image)
    end
end
