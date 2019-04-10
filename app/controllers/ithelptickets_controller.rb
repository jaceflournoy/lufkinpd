class IthelpticketsController < ApplicationController
  before_action :set_ithelpticket, only: [:show, :edit, :update, :destroy]

  # GET /ithelptickets
  # GET /ithelptickets.json
  def index
    @ithelptickets = Ithelpticket.all
  end

  # GET /ithelptickets/1
  # GET /ithelptickets/1.json
  def show
  end

  # GET /ithelptickets/new
  def new
    @ithelpticket = Ithelpticket.new
  end

  # GET /ithelptickets/1/edit
  def edit
  end

  # POST /ithelptickets
  # POST /ithelptickets.json
  def create
    @ithelpticket = Ithelpticket.new(ithelpticket_params)

      respond_to do |format|
        if @ithelpticket.save
          HelpTicketMailer.helpTicket_email(@ithelpticket).deliver_now
          format.html { redirect_to @ithelpticket, notice: 'IT Help Ticket was successfully created. Email Sent.' }
          format.json { render :show, status: :created, location: @ithelpticket }
        else
          format.html { render :new }
          format.json { render json: @ithelpticket.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /ithelptickets/1
  # PATCH/PUT /ithelptickets/1.json
  def update
    respond_to do |format|
      if @ithelpticket.update(ithelpticket_params)
        format.html { redirect_to @ithelpticket, notice: 'IT Help Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ithelpticket }
      else
        format.html { render :edit }
        format.json { render json: @ithelpticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ithelptickets/1
  # DELETE /ithelptickets/1.json
  def destroy
    @ithelpticket.destroy
    respond_to do |format|
      format.html { redirect_to ithelptickets_url, notice: 'IT Help Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ithelpticket
      @ithelpticket = Ithelpticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ithelpticket_params
      params.require(:ithelpticket).permit(:name, :unit, :problem)
    end
end
