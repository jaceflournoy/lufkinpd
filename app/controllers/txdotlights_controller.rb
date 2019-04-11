class TxdotlightsController < ApplicationController
  before_action :set_txdotlight, only: [:show, :edit, :update, :destroy]

  # GET /txdotlights
  # GET /txdotlights.json
  def index
    @txdotlights = Txdotlight.all.where("intersection ILIKE ?","%#{params[:address_search]}%").where("name ILIKE ?","%#{params[:name_search]}%").where("callback ILIKE ?","%#{params[:phone_search]}%").where("unitassigned ILIKE ?","%#{params[:unit_search]}%")
  end

  # GET /txdotlights/1
  # GET /txdotlights/1.json
  def show
  end

  # GET /txdotlights/new
  def new
    @txdotlight = Txdotlight.new
  end

  # GET /txdotlights/1/edit
  def edit
  end

  # POST /txdotlights
  # POST /txdotlights.json
  def create
    @txdotlight = Txdotlight.new(txdotlight_params)

    respond_to do |format|
      if @txdotlight.save
        format.html { redirect_to @txdotlight, notice: 'TX-DOT Light Call-Out was successfully created.' }
        format.json { render :show, status: :created, location: @txdotlight }
      else
        format.html { render :new }
        format.json { render json: @txdotlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /txdotlights/1
  # PATCH/PUT /txdotlights/1.json
  def update
    respond_to do |format|
      if @txdotlight.update(txdotlight_params)
        format.html { redirect_to @txdotlight, notice: 'TX-DOT Light Call-Out was successfully updated.' }
        format.json { render :show, status: :ok, location: @txdotlight }
      else
        format.html { render :edit }
        format.json { render json: @txdotlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /txdotlights/1
  # DELETE /txdotlights/1.json
  def destroy
    @txdotlight.destroy
    respond_to do |format|
      format.html { redirect_to txdotlights_url, notice: 'TX-DOT Light Call-Out was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_txdotlight
      @txdotlight = Txdotlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def txdotlight_params
      params.require(:txdotlight).permit(:intersection, :name, :callback, :unitassigned, :problem, :city, :state, :lightout, :lightred, :comment)
    end
end
