# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Animalcontrol.destroy_all
Cchlog.destroy_all
Citystreet.destroy_all
Daysoffrequest.destroy_all
Gatecode.destroy_all
Genericcallout.destroy_all
Georeport.destroy_all
Phonenumber.destroy_all
Radionumber.destroy_all
Rollcall.destroy_all
Sexoffender.destroy_all
Txdotlight.destroy_all
Txdotstreet.destroy_all
Watersewer.destroy_all

# How to add multiple lines of data
#
# 100.times do |index|
#   Movie.create!(title: Faker::Lorem.sentence(3, false, 0).chop,
#                 director: Faker::Name.name,
#                 storyline: Faker::Lorem.paragraph,
#                 watched_on: Faker::Time.between(4.months.ago, 1.week.ago))
# end
#

20.times do |index|
  Animalcontrol.create!(
      address: Faker::Address.street_address,
      name: Faker::Name.name,
      callback: Faker::PhoneNumber.cell_phone,
      unitassigned: Faker::Number.number(5),
      problem: Faker::Lorem.sentence,
      comment:Faker::Lorem.sentence)
end
p "Created a total of #{Animalcontrol.count} Animal Control Call-Out entries."

20.times do |index|
  Cchlog.create!(
    name: Faker::Name.name,
    dateofbirth: Faker::Date.between(30.years.ago, 10.years.ago),
    idnum: Faker::Number.number(8),
    operator:Faker::Name.name,
    reason:Faker::Lorem.sentence,
    officer:Faker::Name.name,
    disposition:Faker::Lorem.word,
    dispositiondate: Faker::Date.between(30.days.ago, Date.today),
    comment:Faker::Lorem.sentence)
end
p "Created a total of #{Cchlog.count} CCH Log entries."

20.times do |index|
Citystreet.create!([{
    address:Faker::Address.street_address,
    name:Faker::Name.name,
    callback:Faker::PhoneNumber.cell_phone,
    unitassigned:Faker::Number.number(5),
    problem:Faker::Lorem.sentence,
    closestintersection:Faker::Address.street_address,
    city: Faker::Boolean.boolean,
    state: Faker::Boolean.boolean,
    lightout: Faker::Boolean.boolean,
    lightred: Faker::Boolean.boolean,
    roadhazard: Faker::Boolean.boolean,
    needed:Faker::Lorem.sentence,
    comment:Faker::Lorem.sentence}])
end
p "Created a total of #{Citystreet.count} City/Street Call-Out entries."

20.times do |index|
Daysoffrequest.create!([{
    operatorname:Faker::Name.name,
    firstdayoff: Faker::Number.between(1, 4).days.from_now,
    lastdayoff: Faker::Number.between(5, 8).days.from_now,
    returndate: Faker::Number.between(9, 12).days.from_now,
    hoursrequested: Faker::Number.between(1, 30),
    timerequested: 'Vacation',
    comment: Faker::Lorem.sentence,
    approved: Faker::Boolean.boolean}])
end
p "Created a total of #{Daysoffrequest.count} Days Off Request entries."


20.times do |index|
Gatecode.create!([{
    location:Faker::Address.street_address,
    code:Faker::Number.between(1,10)}])
end
p "Created a total of #{Gatecode.count} Gate Code entries."


20.times do |index|
Genericcallout.create!([{
    address:Faker::Address.street_address,
    name:Faker::Name.name,
    callback:Faker::PhoneNumber.cell_phone,
    unitassigned:Faker::Number.number(5),
    problem:Faker::Lorem.sentence,
    comment:Faker::Lorem.sentence}])
end
p "Created a total of #{Genericcallout.count} Generic Call-Out entries."


20.times do |index|
Georeport.create!([{
    presentaddress:Faker::Address.street_address,
    changeaddrto:Faker::Address.street_address,
    biznamechange:Faker::Name.name,
    comment:Faker::Lorem.sentence,
    name1:Faker::Name.name,
    phone1:Faker::PhoneNumber.cell_phone,
    name2:Faker::Name.name,
    phone2:Faker::PhoneNumber.cell_phone,
    name3:Faker::Name.name,
    phone3:Faker::PhoneNumber.cell_phone,
    reportedby:Faker::Name.name}])
end
p "Created a total of #{Georeport.count} GeoBase Report entries."


20.times do |index|
Phonenumber.create!([{
    name: Faker::Name.name_with_middle,
    home:Faker::PhoneNumber.cell_phone,
    office:Faker::PhoneNumber.cell_phone,
    cell:Faker::PhoneNumber.cell_phone,
    secondary_contact:Faker::Name.name}])
end
p "Created a total of #{Phonenumber.count} Phone Number entries."

20.times do |index|
Radionumber.create!([{
    officer:Faker::Name.name,
    radionumber: Faker::Number.number(5),
    extrainfo:Faker::Lorem.sentence}])
end
p "Created a total of #{Radionumber.count} Radio Number entries."

20.times do |index|
Rollcall.create!([{
    radionum: Faker::Number.number(5),
    title: Faker::Name.name,
    description:Faker::Lorem.sentence}])
end
p "Created a total of #{Rollcall.count} Roll Call entries."

20.times do |index|
Sexoffender.create!([{
    name:Faker::Name.name,
    address:Faker::Address.street_address,
    offense:Faker::Lorem.word,
    risklevel:Faker::Number.between(1,4),
    officer:Faker::Name.name,
    dateofbirth: Faker::Number.between(15,45).years.ago,
    created_at: DateTime.now,
    updated_at: DateTime.now}])
end
p "Created a total of #{Sexoffender.count} Sex Offender entries."

20.times do |index|
Txdotlight.create!([{
    intersection:Faker::Address.street_address,
    name:Faker::Name.name,
    callback:Faker::PhoneNumber.cell_phone,
    unitassigned:Faker::Number.number(5),
    problem:Faker::Lorem.sentence,
    city:Faker::Boolean.boolean,
    state:Faker::Boolean.boolean,
    lightout: Faker::Boolean.boolean,
    lightred: Faker::Boolean.boolean,
    comment: Faker::Lorem.sentence}])
end
p "Created a total of #{Txdotlight.count} TX-DOT Light Call-Out entries."

20.times do |index|
Txdotstreet.create!([{
    intersection:Faker::Address.street_address,
    name:Faker::Name.name,
    callback:Faker::PhoneNumber.cell_phone,
    unitassigned:Faker::Number.number(5),
    problem:Faker::Lorem.sentence,
    city: Faker::Boolean.boolean,
    state: Faker::Boolean.boolean,
    needed:Faker::Lorem.word,
    comment:Faker::Lorem.sentence}])
end
p "Created a total of #{Txdotstreet.count} TX-DOT Street Call-Out entries."

20.times do |index|
Watersewer.create!([{
    address:Faker::Address.street_address,
    name:Faker::Name.name,
    callback:Faker::PhoneNumber.cell_phone,
    unitassigned:Faker::Number.number(5),
    problem:Faker::Lorem.sentence,
    wateroff:Faker::Boolean.boolean,
    cityleak: Faker::Boolean.boolean,
    privateleak: Faker::Boolean.boolean,
    noleak: Faker::Boolean.boolean,
    comment: Faker::Lorem.sentence}])
end
p "Created a total of #{Watersewer.count} Water/Sewer Call-Out entries."

User.create(username:'admin', password: 'lufkinpd', role: 'admin')
p "Created a total of #{User.count} User entries."


