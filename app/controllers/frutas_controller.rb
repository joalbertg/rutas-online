# class comment
class FrutasController < ApplicationController
  def buscar
    @fruta = Producto.find_by_nombre(params[:nombre])
  end

  def catalogo
    @frutas = Producto.all
  end
end
