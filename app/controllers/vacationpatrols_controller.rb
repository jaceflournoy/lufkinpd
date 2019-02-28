class VacationpatrolsController < ApplicationController
  before_action :set_vacationpatrol, only: [:show, :edit, :update, :destroy]

  # GET /vacationpatrols
  # GET /vacationpatrols.json
  def index
    @vacationpatrols = Vacationpatrol.all
  end

  # GET /vacationpatrols/1
  # GET /vacationpatrols/1.json
  def show
  end

  # GET /vacationpatrols/new
  def new
    @vacationpatrol = Vacationpatrol.new
  end

  # GET /vacationpatrols/1/edit
  def edit
  end

  # POST /vacationpatrols
  # POST /vacationpatrols.json
  def create
    @vacationpatrol = Vacationpatrol.new(vacationpatrol_params)

    respond_to do |format|
      if @vacationpatrol.save
        format.html { redirect_to @vacationpatrol, notice: 'Vacationpatrol was successfully created.' }
        format.json { render :show, status: :created, location: @vacationpatrol }
      else
        format.html { render :new }
        format.json { render json: @vacationpatrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacationpatrols/1
  # PATCH/PUT /vacationpatrols/1.json
  def update
    respond_to do |format|
      if @vacationpatrol.update(vacationpatrol_params)
        format.html { redirect_to @vacationpatrol, notice: 'Vacationpatrol was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacationpatrol }
      else
        format.html { render :edit }
        format.json { render json: @vacationpatrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacationpatrols/1
  # DELETE /vacationpatrols/1.json
  def destroy
    @vacationpatrol.destroy
    respond_to do |format|
      format.html { redirect_to vacationpatrols_url, notice: 'Vacationpatrol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacationpatrol
      @vacationpatrol = Vacationpatrol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacationpatrol_params
      params.require(:vacationpatrol).permit(:officer, :comment)
    end
end