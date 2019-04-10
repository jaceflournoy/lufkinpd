class GatecodesController < ApplicationController
  load_and_authorize_resource
  before_action :set_gatecode, only: [:show, :edit, :update, :destroy]

  # GET /gatecodes
  # GET /gatecodes.json
  def index
    @gatecodes = Gatecode.all
  end

  # GET /gatecodes/1
  # GET /gatecodes/1.json
  def show
  end

  # GET /gatecodes/new
  def new
    @gatecode = Gatecode.new
  end

  # GET /gatecodes/1/edit
  def edit
  end

  # POST /gatecodes
  # POST /gatecodes.json
  def create
    @gatecode = Gatecode.new(gatecode_params)

    respond_to do |format|
      if @gatecode.save
        format.html { redirect_to @gatecode, notice: 'Gate Code was successfully created.' }
        format.json { render :show, status: :created, location: @gatecode }
      else
        format.html { render :new }
        format.json { render json: @gatecode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gatecodes/1
  # PATCH/PUT /gatecodes/1.json
  def update
    respond_to do |format|
      if @gatecode.update(gatecode_params)
        format.html { redirect_to @gatecode, notice: 'Gate Code was successfully updated.' }
        format.json { render :show, status: :ok, location: @gatecode }
      else
        format.html { render :edit }
        format.json { render json: @gatecode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gatecodes/1
  # DELETE /gatecodes/1.json
  def destroy
    @gatecode.destroy
    respond_to do |format|
      format.html { redirect_to gatecodes_url, notice: 'Gate Code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gatecode
      @gatecode = Gatecode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gatecode_params
      params.require(:gatecode).permit(:location, :code)
    end
end
