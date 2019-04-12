class AnimalcontrolsController < ApplicationController
  before_action :set_animalcontrol, only: [:show, :edit, :update, :destroy]

  # GET /animalcontrols
  # GET /animalcontrols.json
  def index
    @animalcontrols = Animalcontrol.all.paginate(:per_page =>15, :page => params[:page]).where("address ILIKE ?","%#{params[:address_search]}%").where("name ILIKE ?","%#{params[:name_search]}%").where("callback ILIKE ?","%#{params[:phone_search]}%").where("unitassigned ILIKE ?","%#{params[:unit_search]}%")
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
        format.html { redirect_to @animalcontrol, notice: 'Animal Control Call-Out was successfully created.' }
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
        format.html { redirect_to @animalcontrol, notice: 'Animal Control Call-Out was successfully updated.' }
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
      format.html { redirect_to animalcontrols_url, notice: 'Animal Control Call-Out was successfully destroyed.' }
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
