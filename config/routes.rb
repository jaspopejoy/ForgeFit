Rails.application.routes.draw do
  get "check_ins/new"
  get "check_ins/create"
  get "metrics/new"
  get "metrics/create"
  get "metrics/show"
  get "fitness_goals/index"
  get "fitness_goals/show"
  get "fitness_goals/new"
  get "fitness_goals/create"
  root "fitness_goals#index"

  resources :fitness_goals do
    resources :metrics do
      resources :check_ins
    end
  end
end
