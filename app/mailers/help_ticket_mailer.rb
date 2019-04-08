class HelpTicketMailer < ApplicationMailer

  def helpTicket_email(ithelpticket)
    @ithelpticket = ithelpticket
    mail(to: 'lufkinpdtest@gmail.com', subject: 'IT Help Desk Ticket')
  end
end
