FactoryGirl.define do
  num =(Category.last.try(:id) || 0) + 1;

  factory :category do
    sequence(:nombre) { |n| ["Libros", "Musica", "Tecnologia", 'Cocina', 'Seguridad'].sample + " #{n+num}" }
    descripcion "#{Faker::Company.bs}"
  end
end
