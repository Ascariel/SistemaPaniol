# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
