class RadionumbersController < ApplicationController
  load_and_authorize_resource
  before_action :set_radionumber, only: [:show, :edit, :update, :destroy]

  # GET /radionumbers
  # GET /radionumbers.json
  def index
    @radionumbers = Radionumber.all.paginate(:per_page =>15, :page => params[:page])
                        .where("officer ILIKE ?","%#{params[:officer_search]}%").where("cast(radionumber as varchar(20)) ILIKE ?","%#{params[:radionum_search]}%")
  end

  # GET /radionumbers/1
  # GET /radionumbers/1.json
  def show
  end

  # GET /radionumbers/new
  def new
    @radionumber = Radionumber.new
  end

  # GET /radionumbers/1/edit
  def edit
  end

  # POST /radionumbers
  # POST /radionumbers.json
  def create
    @radionumber = Radionumber.new(radionumber_params)

    respond_to do |format|
      if @radionumber.save
        format.html { redirect_to @radionumber, notice: 'Radio Number was successfully created.' }
        format.json { render :show, status: :created, location: @radionumber }
      else
        format.html { render :new }
        format.json { render json: @radionumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radionumbers/1
  # PATCH/PUT /radionumbers/1.json
  def update
    respond_to do |format|
      if @radionumber.update(radionumber_params)
        format.html { redirect_to @radionumber, notice: 'Radio Number was successfully updated.' }
        format.json { render :show, status: :ok, location: @radionumber }
      else
        format.html { render :edit }
        format.json { render json: @radionumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radionumbers/1
  # DELETE /radionumbers/1.json
  def destroy
    @radionumber.destroy
    respond_to do |format|
      format.html { redirect_to radionumbers_url, notice: 'Radio Number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radionumber
      @radionumber = Radionumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def radionumber_params
      params.require(:radionumber).permit(:officer, :radionumber, :extrainfo)
    end
end
