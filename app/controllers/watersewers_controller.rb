class WatersewersController < ApplicationController
  before_action :set_watersewer, only: [:show, :edit, :update, :destroy]

  # GET /watersewers
  # GET /watersewers.json
  def index
    @watersewers = Watersewer.all
  end

  # GET /watersewers/1
  # GET /watersewers/1.json
  def show
  end

  # GET /watersewers/new
  def new
    @watersewer = Watersewer.new
  end

  # GET /watersewers/1/edit
  def edit
  end

  # POST /watersewers
  # POST /watersewers.json
  def create
    @watersewer = Watersewer.new(watersewer_params)

    respond_to do |format|
      if @watersewer.save
        format.html { redirect_to @watersewer, notice: 'Water/Sewer Call-Out was successfully created.' }
        format.json { render :show, status: :created, location: @watersewer }
      else
        format.html { render :new }
        format.json { render json: @watersewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watersewers/1
  # PATCH/PUT /watersewers/1.json
  def update
    respond_to do |format|
      if @watersewer.update(watersewer_params)
        format.html { redirect_to @watersewer, notice: 'Water/Sewer Call-Out was successfully updated.' }
        format.json { render :show, status: :ok, location: @watersewer }
      else
        format.html { render :edit }
        format.json { render json: @watersewer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watersewers/1
  # DELETE /watersewers/1.json
  def destroy
    @watersewer.destroy
    respond_to do |format|
      format.html { redirect_to watersewers_url, notice: 'Water/Sewer Call-Out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watersewer
      @watersewer = Watersewer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watersewer_params
      params.require(:watersewer).permit(:address, :name, :callback, :unitassigned, :problem, :wateroff, :cityleak, :privateleak, :noleak, :comment)
    end
end
