class DailydispatchController < ApplicationController
  def index
    @phonenumbers = Phonenumber.all
    @gatecodes = Gatecode.all
    @rollcalls = Rollcall.all
    @sexoffenders = Sexoffender.all
    @fleettickets = Fleetticket.all
    @radionumbers = Radionumber.all
    @vacationpatrols = Vacationpatrol.all
  end
end
