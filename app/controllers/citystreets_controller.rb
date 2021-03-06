class CitystreetsController < ApplicationController
  load_and_authorize_resource
  before_action :set_citystreet, only: [:show, :edit, :update, :destroy]

  # GET /citystreets
  # GET /citystreets.json
  def index
    @citystreets = Citystreet.all.paginate(:per_page =>15, :page => params[:page])
                       .where("address ILIKE ?","%#{params[:address_search]}%").where("name ILIKE ?","%#{params[:name_search]}%").where("callback ILIKE ?","%#{params[:phone_search]}%").where("unitassigned ILIKE ?","%#{params[:unit_search]}%")
  end

  # GET /citystreets/1
  # GET /citystreets/1.json
  def show
  end

  # GET /citystreets/new
  def new
    @citystreet = Citystreet.new
  end

  # GET /citystreets/1/edit
  def edit
  end

  # POST /citystreets
  # POST /citystreets.json
  def create
    @citystreet = Citystreet.new(citystreet_params)

    respond_to do |format|
      if @citystreet.save
        format.html { redirect_to @citystreet, notice: 'City/Street Call-Out was successfully created.' }
        format.json { render :show, status: :created, location: @citystreet }
      else
        format.html { render :new }
        format.json { render json: @citystreet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citystreets/1
  # PATCH/PUT /citystreets/1.json
  def update
    respond_to do |format|
      if @citystreet.update(citystreet_params)
        format.html { redirect_to @citystreet, notice: 'City/Street Call-Out was successfully updated.' }
        format.json { render :show, status: :ok, location: @citystreet }
      else
        format.html { render :edit }
        format.json { render json: @citystreet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citystreets/1
  # DELETE /citystreets/1.json
  def destroy
    @citystreet.destroy
    respond_to do |format|
      format.html { redirect_to citystreets_url, notice: 'City/Street Call-Out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citystreet
      @citystreet = Citystreet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def citystreet_params
      params.require(:citystreet).permit(:address, :name, :callback, :unitassigned, :problem, :closestintersection, :city, :state, :lightout, :lightred, :roadhazard, :needed, :comment)
    end
end
