Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

    # Rotas para o Controlador de Professor
    resources :professors 

    # Rotas para o Controlador de Aluno
    resources :alunos
  
    # Rotas para o Controlador de SalaDeDefesa
    resources :sala_de_defesas
  
    # Rotas para o Controlador de Agendamento
    resources :agendamentos
  
    root 'welcome#index' # Defina uma página inicial se desejar

  
end
