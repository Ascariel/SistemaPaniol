require 'rails_helper'
require "factory_girl"

RSpec.describe Product, type: :model do

  describe "Manejo Stock productos" do 
    context "sin reservas activas y con stock total 20" do 

      it "Stock total deberia ser igual al stock disponible" do 
        product = FactoryGirl.create(:product, stock_total: 20)
        stock_disponible = product.stock_disponible

        expect(stock_disponible).to eq product.stock_total
      end

      it "Stock stock 'no disponible' deberia ser 0" do 
        product = FactoryGirl.create(:product, stock_total: 20)
        stock_disponible = product.stock_no_disponible

        expect(stock_disponible).to eq 0
      end

      it "Stock prestado deberia ser 0 cuando no hay reservas" do
        product = FactoryGirl.create(:product, stock_total: 20)
        stock_prestado = product.stock_prestado

        expect(stock_prestado).to eq 0
      end  

      it "Deberia poder generar reservas cuando hay stock" do
        product = FactoryGirl.create(:product, stock_total: 20)
        puede_generar_reservas = product.puede_generar_reservas?

        expect(puede_generar_reservas).to be_truthy
      end  

      it "reservas activas deberia ser 0" do
        product = FactoryGirl.create(:product, stock_total: 20)
        reservas_activas = product.reservas_activas.count

        expect(reservas_activas).to eq 0
      end              
          
    end

    # context "Con reservas activas y con stock total 20" do 
      
    # end
  end
end
