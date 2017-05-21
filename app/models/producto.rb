class Producto < ApplicationRecord
  belongs_to :category

  def self.generar_productos

    category = Category.create(nombre: "Libros", descripcion: "Coleccion de libros fisicos")

    producto = Producto.create(nombre: "El Principito", descripcion: "Libro de fantasia", category_id: category.id)
    producto = Producto.create(nombre: "Diccionario Español", descripcion: "Libro educacional", category_id: category.id)
    producto = Producto.create(nombre: "Enciclopedia", descripcion: "Libro educacional", category_id: category.id)
    producto = Producto.create(nombre: "Game of Thrones", descripcion: "Libro de fantasiaHistoria", category_id: category.id)

    category2 = Category.create(nombre: "Tecnologia", descripcion: "Coleccion de articulos de tecnologia")
    
    producto = Producto.create(nombre: "Notebook", descripcion: "Computador Ultima Generacion", category_id: category2.id)
    producto = Producto.create(nombre: "Mouse", descripcion: "Articulo de Utilidad", category_id: category2.id)
    producto = Producto.create(nombre: "Parlantes", descripcion: "Articulo de Utilidad", category_id: category2.id)
    producto = Producto.create(nombre: "Audifonos", descripcion: "Articulo de Utilidad", category_id: category2.id)    




  end
end
