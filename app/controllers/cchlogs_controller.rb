class CchlogsController < ApplicationController
  before_action :set_cchlog, only: [:show, :edit, :update, :destroy]

  # GET /cchlogs
  # GET /cchlogs.json
  def index
    @cchlogs = Cchlog.all
  end

  # GET /cchlogs/1
  # GET /cchlogs/1.json
  def show
  end

  # GET /cchlogs/new
  def new
    @cchlog = Cchlog.new
  end

  # GET /cchlogs/1/edit
  def edit
  end

  # POST /cchlogs
  # POST /cchlogs.json
  def create
    @cchlog = Cchlog.new(cchlog_params)

    respond_to do |format|
      if @cchlog.save
        format.html { redirect_to @cchlog, notice: 'Cchlog was successfully created.' }
        format.json { render :show, status: :created, location: @cchlog }
      else
        format.html { render :new }
        format.json { render json: @cchlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cchlogs/1
  # PATCH/PUT /cchlogs/1.json
  def update
    respond_to do |format|
      if @cchlog.update(cchlog_params)
        format.html { redirect_to @cchlog, notice: 'Cchlog was successfully updated.' }
        format.json { render :show, status: :ok, location: @cchlog }
      else
        format.html { render :edit }
        format.json { render json: @cchlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cchlogs/1
  # DELETE /cchlogs/1.json
  def destroy
    @cchlog.destroy
    respond_to do |format|
      format.html { redirect_to cchlogs_url, notice: 'Cchlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cchlog
      @cchlog = Cchlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cchlog_params
      params.require(:cchlog).permit(:name, :dateofbirth, :idnum, :operator, :reason, :officer, :disposition, :dispositiondate, :comment)
    end
end
