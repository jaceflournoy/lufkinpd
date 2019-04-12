class DaysoffrequestsController < ApplicationController
  before_action :set_daysoffrequest, only: [:show, :edit, :update, :destroy]

  # GET /daysoffrequests
  # GET /daysoffrequests.json
  def index
    @daysoffrequests = Daysoffrequest.all.paginate(:per_page =>15, :page => params[:page])
                           .where("operatorname ILIKE ?","%#{params[:name_search]}%")
  end

  # GET /daysoffrequests/1
  # GET /daysoffrequests/1.json
  def show
  end

  # GET /daysoffrequests/new
  def new
    @daysoffrequest = Daysoffrequest.new
  end

  # GET /daysoffrequests/1/edit
  def edit
  end

  # POST /daysoffrequests
  # POST /daysoffrequests.json
  def create
    @daysoffrequest = Daysoffrequest.new(daysoffrequest_params)

    respond_to do |format|
      if @daysoffrequest.save
        format.html { redirect_to @daysoffrequest, notice: 'Days Off Request was successfully created.' }
        format.json { render :show, status: :created, location: @daysoffrequest }
      else
        format.html { render :new }
        format.json { render json: @daysoffrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daysoffrequests/1
  # PATCH/PUT /daysoffrequests/1.json
  def update
    respond_to do |format|
      if @daysoffrequest.update(daysoffrequest_params)
        format.html { redirect_to @daysoffrequest, notice: 'Days Off Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @daysoffrequest }
      else
        format.html { render :edit }
        format.json { render json: @daysoffrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daysoffrequests/1
  # DELETE /daysoffrequests/1.json
  def destroy
    @daysoffrequest.destroy
    respond_to do |format|
      format.html { redirect_to daysoffrequests_url, notice: 'Days Off Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daysoffrequest
      @daysoffrequest = Daysoffrequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daysoffrequest_params
      params.require(:daysoffrequest).permit(:operatorname, :firstdayoff, :lastdayoff, :returndate, :hoursrequested, :timerequested, :comment, :approved)
    end
end
