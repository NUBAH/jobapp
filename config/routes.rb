Rails.application.routes.draw do
  devise_for :employees, path: 'employees', controllers: {sessions: "employees/sessions", registrations: "employees/registrations"}
  devise_for :companies, path: 'companies', controllers: {sessions: "companies/sessions", registrations: "companies/registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :chats
  resources :messages
end
