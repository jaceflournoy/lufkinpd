class SexoffendersController < ApplicationController
  before_action :set_sexoffender, only: [:show, :edit, :update, :destroy]

  # GET /sexoffenders
  # GET /sexoffenders.json
  def index
    @sexoffenders = Sexoffender.all.paginate(:per_page =>15, :page => params[:page])
                        .where(["name LIKE ?","%#{params[:name_search]}%"])
  end

  # GET /sexoffenders/1
  # GET /sexoffenders/1.json
  def show
  end

  # GET /sexoffenders/new
  def new
    @sexoffender = Sexoffender.new
  end

  # GET /sexoffenders/1/edit
  def edit
  end

  # POST /sexoffenders
  # POST /sexoffenders.json
  def create
    @sexoffender = Sexoffender.new(sexoffender_params)

    respond_to do |format|
      if @sexoffender.save
        format.html { redirect_to @sexoffender, notice: 'Sex Offender was successfully created.' }
        format.json { render :show, status: :created, location: @sexoffender }
      else
        format.html { render :new }
        format.json { render json: @sexoffender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sexoffenders/1
  # PATCH/PUT /sexoffenders/1.json
  def update
    respond_to do |format|
      if @sexoffender.update(sexoffender_params)
        format.html { redirect_to @sexoffender, notice: 'Sex Offender was successfully updated.' }
        format.json { render :show, status: :ok, location: @sexoffender }
      else
        format.html { render :edit }
        format.json { render json: @sexoffender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sexoffenders/1
  # DELETE /sexoffenders/1.json
  def destroy
    @sexoffender.destroy
    respond_to do |format|
      format.html { redirect_to sexoffenders_url, notice: 'Sex Offender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sexoffender
      @sexoffender = Sexoffender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sexoffender_params
      params.require(:sexoffender).permit(:image, :name, :address, :offense, :risklevel, :officer, :dateofbirth)
    end
end
