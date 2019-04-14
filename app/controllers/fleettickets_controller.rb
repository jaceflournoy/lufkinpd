class FleetticketsController < ApplicationController
  load_and_authorize_resource
  before_action :set_fleetticket, only: [:show, :edit, :update, :destroy]

  # GET /fleettickets
  # GET /fleettickets.json
  def index
    @fleettickets = Fleetticket.all.paginate(:per_page =>15, :page => params[:page])
                        .where("cast(unitnumber as varchar(20)) ILIKE ?", "%#{params[:unit_search]}%").where(["reportingofficer ILIKE ?","%#{params[:officer_search]}%"]).where(["problem ILIKE ?","%#{params[:problem_search]}%"])
  end

  # GET /fleettickets/1
  # GET /fleettickets/1.json
  def show
  end

  # GET /fleettickets/new
  def new
    @fleetticket = Fleetticket.new
  end

  # GET /fleettickets/1/edit
  def edit
  end

  # POST /fleettickets
  # POST /fleettickets.json
  def create
    @fleetticket = Fleetticket.new(fleetticket_params)

    respond_to do |format|
      if @fleetticket.save
        FleetTicketMailer.fleetTicket_email(@fleetticket).deliver_now
        format.html { redirect_to @fleetticket, notice: 'Fleet Ticket was successfully created. Email Sent.' }
        format.json { render :show, status: :created, location: @fleetticket }
      else
        format.html { render :new }
        format.json { render json: @fleetticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fleettickets/1
  # PATCH/PUT /fleettickets/1.json
  def update
    respond_to do |format|
      if @fleetticket.update(fleetticket_params)
        format.html { redirect_to @fleetticket, notice: 'Fleet Ticket was successfully updated. ' }
        format.json { render :show, status: :ok, location: @fleetticket }
      else
        format.html { render :edit }
        format.json { render json: @fleetticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fleettickets/1
  # DELETE /fleettickets/1.json
  def destroy
    @fleetticket.destroy
    respond_to do |format|
      format.html { redirect_to fleettickets_url, notice: 'Fleet Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fleetticket
      @fleetticket = Fleetticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fleetticket_params
      params.require(:fleetticket).permit(:unitnumber, :reportingofficer, :problem)
    end
end
