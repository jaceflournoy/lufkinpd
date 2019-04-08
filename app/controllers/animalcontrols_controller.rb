class AnimalcontrolsController < ApplicationController
  before_action :set_animalcontrol, only: [:show, :edit, :update, :destroy]

  # GET /animalcontrols
  # GET /animalcontrols.json
  def index
    @animalcontrols = Animalcontrol.all
  end

  # GET /animalcontrols/1
  # GET /animalcontrols/1.json
  def show
  end

  # GET /animalcontrols/new
  def new
    @animalcontrol = Animalcontrol.new
  end

  # GET /animalcontrols/1/edit
  def edit
  end

  # POST /animalcontrols
  # POST /animalcontrols.json
  def create
    @animalcontrol = Animalcontrol.new(animalcontrol_params)

    respond_to do |format|
      if @animalcontrol.save
        format.html { redirect_to @animalcontrol, notice: 'Animalcontrol was successfully created.' }
        format.json { render :show, status: :created, location: @animalcontrol }
      else
        format.html { render :new }
        format.json { render json: @animalcontrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animalcontrols/1
  # PATCH/PUT /animalcontrols/1.json
  def update
    respond_to do |format|
      if @animalcontrol.update(animalcontrol_params)
        format.html { redirect_to @animalcontrol, notice: 'Animalcontrol was successfully updated.' }
        format.json { render :show, status: :ok, location: @animalcontrol }
      else
        format.html { render :edit }
        format.json { render json: @animalcontrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animalcontrols/1
  # DELETE /animalcontrols/1.json
  def destroy
    @animalcontrol.destroy
    respond_to do |format|
      format.html { redirect_to animalcontrols_url, notice: 'Animalcontrol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animalcontrol
      @animalcontrol = Animalcontrol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animalcontrol_params
      params.require(:animalcontrol).permit(:address, :name, :callback, :unitassigned, :problem, :comment)
    end
end