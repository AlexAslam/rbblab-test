class ComplexBuildingsController < ApplicationController
  before_action :set_complex_building, only: [:show, :edit, :update, :destroy]

  # GET /complex_buildings
  # GET /complex_buildings.json
  def index
    @complex_buildings = ComplexBuilding.all
  end

  # GET /complex_buildings/1
  # GET /complex_buildings/1.json
  def show
  end

  # GET /complex_buildings/new
  def new
    @complex_building = ComplexBuilding.new
  end

  # GET /complex_buildings/1/edit
  def edit
  end

  def buy
    complex_building = ComplexBuilding.find(params[:complex_building_id])
    user_buy = current_user.user_buys.new
    user_buy.buyings = complex_building
    respond_to do |format|
      if user_buy.save
        format.html { redirect_to complex_building, notice: 'Complex Building was successfully purchased.' }
        format.json { render :show, status: :created, location: complex_building }
      else
        flash[:alert] = complex_building.errors.full_messages.join(', ')
        format.html { redirect_to complex_buildings_url }
        format.json { render json: complex_building.errors, status: :unprocessable_entity }
      end
    end
  end

  def unbuy
    complex_building = ComplexBuilding.find(params[:complex_building_id])
    user_buy = current_user.user_buys.find_by(buyings:complex_building)
    respond_to do |format|
      if user_buy.destroy
        format.html { redirect_to complex_building, notice: 'Complex Building was successfully UnPurchased.' }
        format.json { render :show, status: :created, location: complex_building }
      else
        flash[:alert] = complex_building.errors.full_messages.join(', ')
        format.html { redirect_to complex_buildings_url }
        format.json { render json: complex_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /complex_buildings
  # POST /complex_buildings.json
  def create
    @complex_building = ComplexBuilding.new(complex_building_params)

    respond_to do |format|
      if @complex_building.save
        format.html { redirect_to @complex_building, notice: 'Complex Building was successfully created.' }
        format.json { render :show, status: :created, location: @complex_building }
      else
        format.html { render :new }
        format.json { render json: @complex_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complex_buildings/1
  # PATCH/PUT /complex_buildings/1.json
  def update
    respond_to do |format|
      if @complex_building.update(complex_building_params)
        format.html { redirect_to @complex_building, notice: 'Complex Building was successfully updated.' }
        format.json { render :show, status: :ok, location: @complex_building }
      else
        format.html { render :edit }
        format.json { render json: @complex_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complex_buildings/1
  # DELETE /complex_buildings/1.json
  def destroy
    @complex_building.destroy
    respond_to do |format|
      format.html { redirect_to complex_buildings_url, notice: 'Complex Building was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complex_building
      @complex_building = ComplexBuilding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complex_building_params
      params.require(:complex_building).permit(:owner, :address, :units, :sqmt, :price)
    end
end
