Rails.application.routes.draw do
  scope 'admin' do
    resources :productos do
      member do
        put :limpiar_imagen
      end

      collection do
        put :generar_imagenes
      end
    end

    namespace :contabilidad do
      resources :cuentas
    end

    namespace :facturacion do
      resources :cuentas
    end
  end

  get 'acerca-de' => 'paginas#acerca_de'
  get 'contactanos' => 'paginas#contactenos'
  get 'frutas/:nombre' => 'frutas#buscar', as: :frutas_buscar
  get 'productos' => 'frutas#catalogo'

  root 'homepage#index'
end
