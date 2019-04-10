class GenericcalloutsController < ApplicationController
  before_action :set_genericcallout, only: [:show, :edit, :update, :destroy]

  # GET /genericcallouts
  # GET /genericcallouts.json
  def index
    @genericcallouts = Genericcallout.all
  end

  # GET /genericcallouts/1
  # GET /genericcallouts/1.json
  def show
  end

  # GET /genericcallouts/new
  def new
    @genericcallout = Genericcallout.new
  end

  # GET /genericcallouts/1/edit
  def edit
  end

  # POST /genericcallouts
  # POST /genericcallouts.json
  def create
    @genericcallout = Genericcallout.new(genericcallout_params)

    respond_to do |format|
      if @genericcallout.save
        format.html { redirect_to @genericcallout, notice: 'Generic Call-Out was successfully created.' }
        format.json { render :show, status: :created, location: @genericcallout }
      else
        format.html { render :new }
        format.json { render json: @genericcallout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genericcallouts/1
  # PATCH/PUT /genericcallouts/1.json
  def update
    respond_to do |format|
      if @genericcallout.update(genericcallout_params)
        format.html { redirect_to @genericcallout, notice: 'Generic Call-Out was successfully updated.' }
        format.json { render :show, status: :ok, location: @genericcallout }
      else
        format.html { render :edit }
        format.json { render json: @genericcallout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genericcallouts/1
  # DELETE /genericcallouts/1.json
  def destroy
    @genericcallout.destroy
    respond_to do |format|
      format.html { redirect_to genericcallouts_url, notice: 'Generic Call-Out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genericcallout
      @genericcallout = Genericcallout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genericcallout_params
      params.require(:genericcallout).permit(:address, :name, :callback, :unitassigned, :problem, :comment)
    end
end
