Rails.application.routes.draw do
  resources :documentos
  resources :bonificaciones
  resources :otrocargos
  resources :lineas
  resources :facturas
  resources :lecturas
  resources :medidores
  resources :suministros
  resources :edesals
  resources :contratos
  resources :cuentas
  resources :clientes
  get 'facturapdf/index'
  resources :enumerados
  resources :direcciones
  resources :calles
  resources :barrios
  resources :localidades
  resources :municipios
  resources :departamentos
  resources :provincias
  resources :paises
  devise_for :users
  root 'home#index'

  get :search, controller: :direcciones
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
