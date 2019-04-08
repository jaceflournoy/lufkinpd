class FleetTicketMailer < ApplicationMailer

  def fleetTicket_email(fleetticket)
    @fleetticket = fleetticket
    mail(to: 'lufkinpdtest@gmail.com', subject: 'Fleet Ticket Email')
  end

end
