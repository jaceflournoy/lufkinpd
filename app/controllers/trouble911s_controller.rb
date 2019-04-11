class Trouble911sController < ApplicationController
  before_action :set_trouble911, only: [:show, :edit, :update, :destroy]

  # GET /trouble911s
  # GET /trouble911s.json
  def index
    @trouble911s = Trouble911.all.where("providername ILIKE ?","%#{params[:name_search]}%").where("phonenumber ILIKE ?","%#{params[:phone_search]}%").where("faxnumber ILIKE ?","%#{params[:fax_search]}%")
  end

  # GET /trouble911s/1
  # GET /trouble911s/1.json
  def show
  end

  # GET /trouble911s/new
  def new
    @trouble911 = Trouble911.new
  end

  # GET /trouble911s/1/edit
  def edit
  end

  # POST /trouble911s
  # POST /trouble911s.json
  def create
    @trouble911 = Trouble911.new(trouble911_params)

    respond_to do |format|
      if @trouble911.save
        format.html { redirect_to @trouble911, notice: '911 Trouble Provider was successfully created.' }
        format.json { render :show, status: :created, location: @trouble911 }
      else
        format.html { render :new }
        format.json { render json: @trouble911.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trouble911s/1
  # PATCH/PUT /trouble911s/1.json
  def update
    respond_to do |format|
      if @trouble911.update(trouble911_params)
        format.html { redirect_to @trouble911, notice: '911 Trouble Provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @trouble911 }
      else
        format.html { render :edit }
        format.json { render json: @trouble911.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trouble911s/1
  # DELETE /trouble911s/1.json
  def destroy
    @trouble911.destroy
    respond_to do |format|
      format.html { redirect_to trouble911s_url, notice: '911 Trouble Provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trouble911
      @trouble911 = Trouble911.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trouble911_params
      params.require(:trouble911).permit(:providername, :phonenumber, :faxnumber, :extrainfo)
    end
end
