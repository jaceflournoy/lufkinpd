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
Animalcontrol.create!([{
    address:'test',
    name:'test',
    callback:'test',
    unitassigned:'test',
    problem:'test',
    comment:'test' },
{
    address:'test',
    name:'test',
    callback:'test',
    unitassigned:'test',
    problem:'test',
    comment:'test' }])
p "Created a total of #{Animalcontrol.count} Animal Control Call-Out entries."

####
Cchlog.create!([{
    name:'test',
    dateofbirth: 20.years.ago,
    idnum:'test',
    operator:'test',
    reason:'test',
    officer:'test',
    disposition:'test',
    dispositiondate: 15.days.ago,
    comment:'test'}])
p "Created a total of #{Cchlog.count} CCH Log entries."

Citystreet.create!([{
    address:'test',
    name:'test',
    callback:'test',
    unitassigned:'test',
    problem:'test',
    closestintersection:'test',
    city: true,
    state: false,
    lightout: true,
    lightred: false,
    roadhazard: false,
    needed:'test',
    comment:'test'}])
p "Created a total of #{Citystreet.count} City/Street Call-Out entries."

Daysoffrequest.create!([{
    operatorname:'test',
    firstdayoff: 2.days.from_now,
    lastdayoff: 4.days.from_now,
    returndate: 5.days.from_now,
    hoursrequested: 30,
    timerequested: 'Vacation',
    comment: 'test',
    approved: true}])
p "Created a total of #{Daysoffrequest.count} Days Off Request entries."

Gatecode.create!([{
    location:'test',
    code:'test'}])
p "Created a total of #{Gatecode.count} Gate Code entries."

Genericcallout.create!([{
    address:'test',
    name:'test',
    callback:'test',
    unitassigned:'test',
    problem:'test',
    comment:'test'}])
p "Created a total of #{Genericcallout.count} Generic Call-Out entries."

Georeport.create!([{
    presentaddress:'test',
    changeaddrto:'test',
    biznamechange:'test',
    comment:'test',
    name1:'test',
    phone1:'test',
    name2:'test',
    phone2:'test',
    name3:'test',
    phone3:'test',
    reportedby:'test'}])
p "Created a total of #{Georeport.count} GeoBase Report entries."


Phonenumber.create!([{
    name:'test',
    home:'test',
    office:'test',
    cell:'test',
    secondary_contact:'test'}])
p "Created a total of #{Phonenumber.count} Phone Number entries."

Radionumber.create!([{
    officer:'test',
    radionumber: 123,
    extrainfo:'test'}])
p "Created a total of #{Radionumber.count} Radio Number entries."


Rollcall.create!([{
    radionum: 123,
    title:'test',
    description:'test'}])
p "Created a total of #{Rollcall.count} Roll Call entries."


#s1 = Sexoffender.create!([{
#    name:'test',
#    address:'test',
#    offense:'test',
#    risklevel:'test',
#    officer:'test',
#    dateofbirth: 30.years.ago,
#    created_at: DateTime.now,
#    updated_at: DateTime.now}])
#s1.image.attach(io: File.open('app/assets/images/defaultimages/default-avatar.jpg'), filename: 'default-avatar.jpg', content_type: 'image/jpg')
#p "Created a total of #{Sexoffender.count} Sex Offender entries."


Txdotlight.create!([{
    intersection:'test',
    name:'test',
    callback:'test',
    unitassigned:'test',
    problem:'test',
    city:true,
    state:false,
    lightout: true,
    lightred: false,
    comment: 'test'}])
p "Created a total of #{Txdotlight.count} TX-DOT Light Call-Out entries."


Txdotstreet.create!([{
    intersection:'test',
    name:'test',
    callback:'test',
    unitassigned:'test',
    problem:'test',
    city: true,
    state: false,
    needed:'test',
    comment:'test'}])
p "Created a total of #{Txdotstreet.count} TX-DOT Street Call-Out entries."

Watersewer.create!([{
    address:'test',
    name:'test',
    callback:'test',
    unitassigned:'test',
    problem:'test',
    wateroff:true,
    cityleak: true,
    privateleak: false,
    noleak: false,
    comment: 'test'}])
p "Created a total of #{Watersewer.count} Water/Sewer Call-Out entries."

User.create(username:'admin', password: 'lufkinpd', role: 'admin')
p "Created a total of #{User.count} User entries."


