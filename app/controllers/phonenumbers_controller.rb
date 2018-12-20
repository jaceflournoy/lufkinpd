class PhonenumbersController < ApplicationController
  load_and_authorize_resource
  before_action :set_phonenumber, only: [:show, :edit, :update, :destroy]

  # GET /phonenumbers
  # GET /phonenumbers.json
  def index
    @phonenumbers = Phonenumber.all
  end

  # GET /phonenumbers/1
  # GET /phonenumbers/1.json
  def show
  end

  # GET /phonenumbers/new
  def new
    @phonenumber = Phonenumber.new
  end

  # GET /phonenumbers/1/edit
  def edit
  end

  # POST /phonenumbers
  # POST /phonenumbers.json
  def create
    @phonenumber = Phonenumber.new(phonenumber_params)

    respond_to do |format|
      if @phonenumber.save
        format.html { redirect_to @phonenumber, notice: 'Phonenumber was successfully created.' }
        format.json { render :show, status: :created, location: @phonenumber }
      else
        format.html { render :new }
        format.json { render json: @phonenumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phonenumbers/1
  # PATCH/PUT /phonenumbers/1.json
  def update
    respond_to do |format|
      if @phonenumber.update(phonenumber_params)
        format.html { redirect_to @phonenumber, notice: 'Phonenumber was successfully updated.' }
        format.json { render :show, status: :ok, location: @phonenumber }
      else
        format.html { render :edit }
        format.json { render json: @phonenumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phonenumbers/1
  # DELETE /phonenumbers/1.json
  def destroy
    @phonenumber.destroy
    respond_to do |format|
      format.html { redirect_to phonenumbers_url, notice: 'Phonenumber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phonenumber
      @phonenumber = Phonenumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phonenumber_params
      params.require(:phonenumber).permit(:name, :home, :office, :cell, :secondary_contact)
    end
end
