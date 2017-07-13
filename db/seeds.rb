


user = User.create(email: "pablocangas+1@gmail.com", rut: "admin", nombre: "Admin", apellido: "Apellido Admin", rol: "admin", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
user = User.create(email: "pablo+11@propertysimple.com", rut: "alumno", nombre: "Alumno", apellido: "Apellido Alumno", rol: "alumno", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )

user = User.create(email: "pablo+22@propertysimple.com", rut: "alumno2", nombre: "Alumno 2", apellido: "Apellido Alumno 2", rol: "alumno", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
user = User.create(email: "pablo+33@propertysimple.com", rut: "profesor", nombre: "Profesor ", apellido: "Apellido Profesor", rol: "profesor", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
user = User.create(email: "pablo+44@propertysimple.com", rut: "director", nombre: "Director", apellido: "Apellido Alumno", rol: "director", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )

# category = Category.create(nombre: "Libros", descripcion: "Coleccion de libros fisicos")

# product = Product.create(nombre: "El Principito", descripcion: "Libro de fantasia", category_id: category.id)
# product = Product.create(nombre: "Diccionario Español", descripcion: "Libro educacional", category_id: category.id)
# product = Product.create(nombre: "Enciclopedia", descripcion: "Libro educacional", category_id: category.id)
# product = Product.create(nombre: "Game of Thrones", descripcion: "Libro de fantasiaHistoria", category_id: category.id)

# category2 = Category.create(nombre: "Tecnologia", descripcion: "Coleccion de articulos de tecnologia")

# product = Product.create(nombre: "Notebook", descripcion: "Computador Ultima Generacion", category_id: category2.id)
# product = Product.create(nombre: "Mouse", descripcion: "Articulo de Utilidad", category_id: category2.id)
# product = Product.create(nombre: "Parlantes", descripcion: "Articulo de Utilidad", category_id: category2.id)
# product = Product.create(nombre: "Audifonos", descripcion: "Articulo de Utilidad", category_id: category2.id)    



# user = User.create(email: "pablocangas@gmail.com", rut: "admin", nombre: "Admin", apellido: "Apellido Admin", rol: "admin", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
# user = User.create(email: "pablo@propertysimple.com", rut: "alumno", nombre: "Alumno", apellido: "Apellido Alumno", rol: "alumno", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
user = User.create(email: "andrea.saravia.c@gmail.com", rut: "6062545-k", nombre: "Verónica", apellido: "Canals", rol: "profesor", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
user = User.create(email: "andr.saravia@alumnos.duoc.cl", rut: "13549965-k", nombre: "Andrea", apellido: "Saravia", rol: "alumno", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
user = User.create(email: "asaravia@outlook.com", rut: "13549965-0", nombre: "Miguel", apellido: "Saravia", rol: "admin", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )







# user = User.create(email: "pablocangas@gmail.com", rut: "admin", nombre: "Admin", apellido: "Apellido Admin", rol: "admin", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
# user = User.create(email: "pablo@propertysimple.com", rut: "alumno", nombre: "Alumno", apellido: "Apellido Alumno", rol: "alumno", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )

category = Category.create(nombre: "Libros", descripcion: "Coleccion de libros fisicos")

product = Product.create(nombre: "Data Center", descripcion: "Base de Datos", category_id: category.id)
product = Product.create(nombre: "Big Data", descripcion: "Base de Datos", category_id: category.id)
product = Product.create(nombre: "Linux, el sistema del Futuro", descripcion: "Manual S.O.", category_id: category.id)
product = Product.create(nombre: "Ubuntu desde cero", descripcion: "Manual S.O.", category_id: category.id)
product = Product.create(nombre: "HTML y CSS", descripcion: "Desarrollo Web", category_id: category.id)
product = Product.create(nombre: "PHP Desarrollo dinámico", descripcion: "Desarrollo Web", category_id: category.id)
product = Product.create(nombre: "Python Facil", descripcion: "Lenguajes de Programación", category_id: category.id)
product = Product.create(nombre: "Arduino, guía fácil", descripcion: "Lenguakes de Programación", category_id: category.id)
product = Product.create(nombre: "Rails", descripcion: "Lenguajes de Programación", category_id: category.id)
product = Product.create(nombre: "JQuery Mobile", descripcion: "Android", category_id: category.id)


category2 = Category.create(nombre: "Audiovisual", descripcion: "Coleccion de articulos de tecnologia")

product = Product.create(nombre: "Notebook Celeron 240 GB", descripcion: "Computador portátil", category_id: category2.id)
product = Product.create(nombre: "Notebook HP i3-500U", descripcion: "Computador portátil", category_id: category2.id)
product = Product.create(nombre: "Notebook Dell N3060 ", descripcion: "Computador portátil", category_id: category2.id)
product = Product.create(nombre: "Conector Dell Wireless M110", descripcion: "Conexion inalámbrica USB", category_id: category2.id)
product = Product.create(nombre: "Telón Quartet Eléctrico", descripcion: "Telón para proyector", category_id: category2.id)
product = Product.create(nombre: "Mouse Optico MS", descripcion: "Accesorio USB para coputadores", category_id: category2.id)
product = Product.create(nombre: "Mouse X1000", descripcion: "Accesorio USB para coputadores", category_id: category2.id)
product = Product.create(nombre: "Mouse Wireless", descripcion: "Accesorio Wireless para coputadores", category_id: category2.id)
product = Product.create(nombre: "Proyector LED Asus H320-A", descripcion: "Protector portatil", category_id: category2.id)
product = Product.create(nombre: "Proyector LED Asus WVGA", descripcion: "Protector portatil", category_id: category2.id)


category3 = Category.create(nombre: "Materiales", descripcion: "Artículos de librería")

product = Product.create(nombre: "Calculadora Casio", descripcion: "Calculadora científica", category_id: category3.id)
product = Product.create(nombre: "Regla Artel 1mt", descripcion: "Reglas metálicas", category_id: category3.id)
product = Product.create(nombre: "Tijeras Mundial", descripcion: "Tisjeras para papeles", category_id: category3.id)
product = Product.create(nombre: "Stic-fix", descripcion: "Pegamento en barra", category_id: category3.id)


category4 = Category.create(nombre: "Papelería", descripcion: "Variedad de papeles para trabajos")

product = Product.create(nombre: "Resma Artel 500", descripcion: "Papel multiuso impresoras", category_id: category4.id)
product = Product.create(nombre: "Papel Craft", descripcion: "Papel café para presentaciones", category_id: category4.id)
product = Product.create(nombre: "Cartulinas Artel - Colores", descripcion: "Papel de colores multiuso", category_id: category4.id)


category5 = Category.create(nombre: "Multimedia", descripcion: "Información en formato Multimedia")

product = Product.create(nombre: "Segunda Guerra Mundial", descripcion: "DVD Documental Histórico", category_id: category5.id)
product = Product.create(nombre: "Conspiraciones en la historia", descripcion: "DVD Documental Histórico", category_id: category5.id)
product = Product.create(nombre: "El Cosmos", descripcion: "DVD Documental Astronómico", category_id: category5.id)
product = Product.create(nombre: "Game of Thrones T 1-2-3", descripcion: "DVD Serie ficción", category_id: category5.id)



