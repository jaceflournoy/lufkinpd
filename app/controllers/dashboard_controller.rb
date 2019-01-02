class DashboardController < ApplicationController

  def index
    @phonenumbers = Phonenumber.all
    @gatecodes = Gatecode.all
    @rollcalls = Rollcall.all
    @sexoffenders = Sexoffender.all
  end
end
