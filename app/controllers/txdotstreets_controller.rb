class TxdotstreetsController < ApplicationController
  before_action :set_txdotstreet, only: [:show, :edit, :update, :destroy]

  # GET /txdotstreets
  # GET /txdotstreets.json
  def index
    @txdotstreets = Txdotstreet.all
  end

  # GET /txdotstreets/1
  # GET /txdotstreets/1.json
  def show
  end

  # GET /txdotstreets/new
  def new
    @txdotstreet = Txdotstreet.new
  end

  # GET /txdotstreets/1/edit
  def edit
  end

  # POST /txdotstreets
  # POST /txdotstreets.json
  def create
    @txdotstreet = Txdotstreet.new(txdotstreet_params)

    respond_to do |format|
      if @txdotstreet.save
        format.html { redirect_to @txdotstreet, notice: 'Txdotstreet was successfully created.' }
        format.json { render :show, status: :created, location: @txdotstreet }
      else
        format.html { render :new }
        format.json { render json: @txdotstreet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /txdotstreets/1
  # PATCH/PUT /txdotstreets/1.json
  def update
    respond_to do |format|
      if @txdotstreet.update(txdotstreet_params)
        format.html { redirect_to @txdotstreet, notice: 'Txdotstreet was successfully updated.' }
        format.json { render :show, status: :ok, location: @txdotstreet }
      else
        format.html { render :edit }
        format.json { render json: @txdotstreet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /txdotstreets/1
  # DELETE /txdotstreets/1.json
  def destroy
    @txdotstreet.destroy
    respond_to do |format|
      format.html { redirect_to txdotstreets_url, notice: 'Txdotstreet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_txdotstreet
      @txdotstreet = Txdotstreet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def txdotstreet_params
      params.require(:txdotstreet).permit(:intersection, :name, :callback, :unitassigned, :problem, :city, :state, :needed, :comment)
    end
end
