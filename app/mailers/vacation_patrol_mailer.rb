class VacationPatrolMailer < ApplicationMailer

  def vacationPatrol_email(vacationpatrol)
    @vacationpatrol = vacationpatrol
    mail(to: 'lufkinpdtest@gmail.com', subject: 'Vacation Patrol Email')
  end

end
