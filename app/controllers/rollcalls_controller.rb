class RollcallsController < ApplicationController
  load_and_authorize_resource
  before_action :set_rollcall, only: [:show, :edit, :update, :destroy]

  # GET /rollcalls
  # GET /rollcalls.json
  def index
    @rollcalls = Rollcall.all
  end

  # GET /rollcalls/1
  # GET /rollcalls/1.json
  def show
  end

  # GET /rollcalls/new
  def new
    @rollcall = Rollcall.new
  end

  # GET /rollcalls/1/edit
  def edit
  end

  # POST /rollcalls
  # POST /rollcalls.json
  def create
    @rollcall = Rollcall.new(rollcall_params)

    respond_to do |format|
      if @rollcall.save
        format.html { redirect_to @rollcall, notice: 'Rollcall was successfully created.' }
        format.json { render :show, status: :created, location: @rollcall }
      else
        format.html { render :new }
        format.json { render json: @rollcall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rollcalls/1
  # PATCH/PUT /rollcalls/1.json
  def update
    respond_to do |format|
      if @rollcall.update(rollcall_params)
        format.html { redirect_to @rollcall, notice: 'Rollcall was successfully updated.' }
        format.json { render :show, status: :ok, location: @rollcall }
      else
        format.html { render :edit }
        format.json { render json: @rollcall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rollcalls/1
  # DELETE /rollcalls/1.json
  def destroy
    @rollcall.destroy
    respond_to do |format|
      format.html { redirect_to rollcalls_url, notice: 'Rollcall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rollcall
      @rollcall = Rollcall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rollcall_params
      params.require(:rollcall).permit(:radionum, :title, :description)
    end
end
