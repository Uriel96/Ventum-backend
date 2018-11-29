# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#student = Student.create(email: 'uriel@itesm.mx', name: 'Uriel', last_name: 'Salazar De Urquidi', semester: 7, degree: 'ITC', photo:'https://scontent.fntr6-1.fna.fbcdn.net/v/t1.0-9/1933852_1051785395356_6113000_n.jpg?_nc_cat=110&_nc_eui2=AeErewpS8_iP1q-UZRoPqo3XjSNuB4IpqP-o-63RAzh37aVGomLsSuVDdl06oacXncX41wQtVjc0TtsEgX-zrI4cOJE1_6WeX-8QnXnFC4xUmHtq7XXOG1JsV0dnvBEtzls&_nc_ht=scontent.fntr6-1.fna&oh=40f95f8ab37687469f4eaf8b515efbf6&oe=5C6445D4', student_groups:'Coffee')
#student_group=StudentGroup.create(name: "Coffee", description:"Grupo estudiantil que busca mejorar la cantidad de cafe que consumen los estudiantes")
#employee = Employee.create(email: "pedro@itesm.mx", name: "Pedro", last_name: "Gutierrez", department: "Tecnologia", is_admin: true)
#place = Place.create(building: "CIAP", floor: 3, classroom: "301", max_capacity: 40)
#area = Area.create(name: "Tecnologia")
#event = Event.create(name: "Proyección HSM1", time:DateTime.current, place_id: 1, description: "Veremos la primera parte de la mejor pelicula del universo", poster:"https://images-na.ssl-images-amazon.com/images/I/51pi281mGrL.jpg", tags: "pelicula, HSM1, felicidad", max_capacity: 50, price: 60, contact:"uriel@itesm.mx", areas: "comunicación, cine")
#reservation = Reservation.create(approval: false, employee_id: 1, event_id: 1)
#register = Register.create(time: DateTime.current, student_id: 1, event_id: 1)


#Users
#students
User.create(name: "uriel", email:"uriel@mail.com", password:"uriel")
User.create(name: "sam", email:"sam@mail.com", password:"sam")
User.create(name: "hugo", email:"hugo@mail.com", password:"hugo")
User.create(name: "lala", email:"lala@mail.com", password:"lala")
User.create(name: "zulma", email:"zulma@mail.com", password:"zulma")
User.create(name: "mayra", email:"mayra@mail.com", password:"mayra")
User.create(name: "ituriel", email:"ituriel@mail.com", password:"ituriel")
User.create(name: "sabrina", email:"sabrina@mail.com", password:"sabrina")
User.create(name: "sara", email:"sara@mail.com", password:"sara")
User.create(name: "michelle", email:"michelle@mail.com", password:"michelle")
#employees
User.create(name:"raul", email:"raul@mail.com", password:"raul")
User.create(name:"ivonne", email:"ivonne@mail.com", password:"ivonne")
User.create(name:"mariana", email:"mariana@mail.com", password:"mariana")
User.create(name:"laura", email:"laura@mail.com", password:"laura")
User.create(name:"jose", email:"jose@mail.com", password:"jose")

#students
Student.create(email: "uriel@mail.com", name:"uriel", last_name:"salazar", semester:"7", degree:"ITC", photo:"https://scontent.fntr3-1.fna.fbcdn.net/v/t1.0-9/10383899_10201883657173558_762304888525850631_n.jpg?_nc_cat=102&_nc_ht=scontent.fntr3-1.fna&oh=a3b79d1e858d07d79c49141defa649a5&oe=5C6908FC", student_groups:"WiSE, COFFE")
Student.create(email: "sam@mail.com", name:"sam", last_name:"solis", semester:"2", degree:"BCT", photo:"https://scontent.fntr3-1.fna.fbcdn.net/v/t1.0-9/40666625_10217437837123029_7728994335793872896_n.jpg?_nc_cat=102&_nc_ht=scontent.fntr3-1.fna&oh=25d68f7dfeca4742f937f92e8e04bd66&oe=5CAB649D", student_groups:"WiSE")
Student.create(email: "hugo@mail.com", name:"hugo", last_name:"cruz", semester:"5", degree:"LAE", photo:"https://scontent.fntr3-1.fna.fbcdn.net/v/t1.0-9/45325086_10156346657520589_4574940004819664896_n.jpg?_nc_cat=104&_nc_ht=scontent.fntr3-1.fna&oh=daf84fae811ff8071d20500194451ab0&oe=5CAC2539", student_groups:"SALAD, LOL")

#employee
Employee.create(email:"raul@mail.com", name:"raul", last_name:"mata", department:"ciencias", is_admin:"true", photo:"https://scontent.fntr3-1.fna.fbcdn.net/v/t1.0-9/16194939_10211842094874053_5435105519924253747_n.jpg?_nc_cat=105&_nc_ht=scontent.fntr3-1.fna&oh=91dbf6dec5b7a84cfa1b2e453757ba1f&oe=5CA41DBA")
Employee.create(email:"mariana@mail.com", name:"mariana", last_name:"garda", department:"quimica", is_admin:"false", photo:"https://scontent.fntr3-1.fna.fbcdn.net/v/t1.0-9/32821365_10160323975000075_8575537917458382848_o.jpg?_nc_cat=105&_nc_ht=scontent.fntr3-1.fna&oh=ee0c245c1eefda57cf4adb1bef4c0174&oe=5C6AC6FE")
Employee.create(email:"laura@mail.com", name:"laura", last_name:"dizo", department:"tecnologías", is_admin:"true", photo:"https://scontent.fntr3-1.fna.fbcdn.net/v/t1.0-1/c0.0.539.539a/22365204_1672000149507716_3416249412894079779_n.jpg?_nc_cat=111&_nc_ht=scontent.fntr3-1.fna&oh=81ad9cfbb6e5adfd9fc1de62b9cdc9b7&oe=5C63C6EF")

#student groups
StudentGroup.create(name:"WiSE", description:"Buscamos mas mujeres en ingenieria")
StudentGroup.create(name:"COFFE", description:"Buscamos mas cafe en el tec")
StudentGroup.create(name:"SALAD", description:"Somos la Sociedad de alumnos mas creativa")
StudentGroup.create(name:"SAITC", description:"Somos la Sociedad de alumnos mas nerd")
StudentGroup.create(name:"SAIID", description:"Somos la Sociedad de alumnos mas paps")

#places
Place.create(building:"Aulas II", floor:"2", classroom:"202", max_capacity:23)
Place.create(building:"Aulas III", floor:"4", classroom:"403", max_capacity:25)
Place.create(building:"Aulas I", floor:"3", classroom:"306", max_capacity:30)
Place.create(building:"CIAP", floor:"1", classroom:"101", max_capacity:10)
Place.create(building:"Biotecnologia", floor:"3", classroom:"301", max_capacity:20)

#events
Event.create(name:"Proyección Cenicienta", time: DateTime.current, place_id:1, description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", poster:"https://imgc.allpostersimages.com/img/print/u-g-F4S80M0.jpg?w=303&h=450", tags:"lo mejor, cenicienta", max_capacity:20, price:50, contact:"cenicienta@itesm.mx", areas:"Fantasia", user_id:1)
Event.create(name:"Proyección Aladin", time: DateTime.current, place_id:2, description:"Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", poster:"https://i.pinimg.com/originals/62/6a/c3/626ac371ccd43b109b23e4662f476ed1.jpg", tags:"lo mejor, cenicienta", max_capacity:20, price:100, contact:"aladdin@itesm.mx", areas:"Misterio", user_id:2)
Event.create(name:"Proyección Toy Story", time: DateTime.current, place_id:3, description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", poster:"https://i.pinimg.com/originals/4c/be/20/4cbe20fc7b02635c407ca9cacd0e18aa.jpg", tags:"buxx, juguetes", max_capacity:20, price:10, contact:"toystory@itesm.mx", areas:"Infatiles", user_id:3)

#Reservations
Reservation.create(approval:true, employee_id:1, event_id:1)
Reservation.create(approval:false, employee_id:2, event_id:2)
Reservation.create(approval:true, employee_id:3, event_id:3)

#Registers
Register.create(time:DateTime.current, student_id:3, event_id:3)
Register.create(time:DateTime.current, student_id:2, event_id:3)
Register.create(time:DateTime.current, student_id:1, event_id:3)