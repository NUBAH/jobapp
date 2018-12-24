Rails.application.routes.draw do
  devise_for :employees, path: 'employees', controllers: {sessions: "employees/sessions", registrations: "employees/registrations"}
  devise_for :companies, path: 'companies', controllers: {sessions: "companies/sessions", registrations: "companies/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :companies, except: [:new, :create, :index]
  resources :employees, except: [:new, :create]
  root to: 'companies#index'

  resources :chats, except: [:edit]
  resources :messages, only: [:index, :new, :create]
end
