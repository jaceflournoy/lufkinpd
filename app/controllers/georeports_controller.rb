class GeoreportsController < ApplicationController
  before_action :set_georeport, only: [:show, :edit, :update, :destroy]

  # GET /georeports
  # GET /georeports.json
  def index
    @georeports = Georeport.all
  end

  # GET /georeports/1
  # GET /georeports/1.json
  def show
  end

  # GET /georeports/new
  def new
    @georeport = Georeport.new
  end

  # GET /georeports/1/edit
  def edit
  end

  # POST /georeports
  # POST /georeports.json
  def create
    @georeport = Georeport.new(georeport_params)

    respond_to do |format|
      if @georeport.save
        format.html { redirect_to @georeport, notice: 'GeoBase Report was successfully created.' }
        format.json { render :show, status: :created, location: @georeport }
      else
        format.html { render :new }
        format.json { render json: @georeport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /georeports/1
  # PATCH/PUT /georeports/1.json
  def update
    respond_to do |format|
      if @georeport.update(georeport_params)
        format.html { redirect_to @georeport, notice: 'GeoBase Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @georeport }
      else
        format.html { render :edit }
        format.json { render json: @georeport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /georeports/1
  # DELETE /georeports/1.json
  def destroy
    @georeport.destroy
    respond_to do |format|
      format.html { redirect_to georeports_url, notice: 'GeoBase Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_georeport
      @georeport = Georeport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def georeport_params
      params.require(:georeport).permit(:presentaddress, :changeaddrto, :biznamechange, :comment, :name1, :phone1, :name2, :phone2, :name3, :phone3, :reportedby)
    end
end
