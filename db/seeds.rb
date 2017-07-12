


user = User.create(email: "pablocangas@gmail.com", rut: "admin", nombre: "Admin", apellido: "Apellido Admin", rol: "admin", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )
user = User.create(email: "pablo@propertysimple.com", rut: "alumno", nombre: "Alumno", apellido: "Apellido Alumno", rol: "alumno", password: "passpass", password_confirmation: "passpass", confirmed_at: Date.current, confirmation_sent_at: Date.current )

category = Category.create(nombre: "Libros", descripcion: "Coleccion de libros fisicos")

product = Product.create(nombre: "El Principito", descripcion: "Libro de fantasia", category_id: category.id)
product = Product.create(nombre: "Diccionario Español", descripcion: "Libro educacional", category_id: category.id)
product = Product.create(nombre: "Enciclopedia", descripcion: "Libro educacional", category_id: category.id)
product = Product.create(nombre: "Game of Thrones", descripcion: "Libro de fantasiaHistoria", category_id: category.id)

category2 = Category.create(nombre: "Tecnologia", descripcion: "Coleccion de articulos de tecnologia")

product = Product.create(nombre: "Notebook", descripcion: "Computador Ultima Generacion", category_id: category2.id)
product = Product.create(nombre: "Mouse", descripcion: "Articulo de Utilidad", category_id: category2.id)
product = Product.create(nombre: "Parlantes", descripcion: "Articulo de Utilidad", category_id: category2.id)
product = Product.create(nombre: "Audifonos", descripcion: "Articulo de Utilidad", category_id: category2.id)    
