# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


student = Student.create ([{email: "uriel@itesm.mx"}, {name: "Uriel"}, {last_name: "Salazar De Urquidi"}, {semester: 7}, {degree: "ITC"}, {photo:"https://scontent.fntr6-1.fna.fbcdn.net/v/t1.0-9/1933852_1051785395356_6113000_n.jpg?_nc_cat=110&_nc_eui2=AeErewpS8_iP1q-UZRoPqo3XjSNuB4IpqP-o-63RAzh37aVGomLsSuVDdl06oacXncX41wQtVjc0TtsEgX-zrI4cOJE1_6WeX-8QnXnFC4xUmHtq7XXOG1JsV0dnvBEtzls&_nc_ht=scontent.fntr6-1.fna&oh=40f95f8ab37687469f4eaf8b515efbf6&oe=5C6445D4"}])
# StudentGroup.create ([{name: "Coffee"}, {description:"Grupo estudiantil que busca mejorar la cantidad de cafe que consumen los estudiantes"}])
employee = Employee.create ([{email: "pedro@itesm.mx"}, {name: "Pedro"}, {last_name: "Gutierrez"}, {department: "Tecnologia"}, {is_admin: true}])
place = Place.create ([{building: "CIAP"}, {floor: 3}, {classroom: "301"}, {max_capacity: 40}])
area = Area.create ([{name: "Tecnologia"}])
event = Event.create ([{name: "Proyección HSM1"}, {time:DateTime.current}, {place_id: 1}, {description: "Veremos la primera parte de la mejor pelicula del universo"}, {poster:"https://images-na.ssl-images-amazon.com/images/I/51pi281mGrL.jpg"}, {tags: "pelicula, HSM1, felicidad"}, {max_capacity: 50}, {price: 50}, {contact:"uriel@itesm.mx"}, {areas: "comunicación, cine"}])
reservation = Reservation.create ([{approval: false},{employee_id: 1}, {event_id: 1}])
register = Register.create  ([{time: DateTime.current},{student_id: 1}, {event_id: 1}])
