Rails.application.routes.draw do
  root to: "tops#index"
  resources :librarys
  resources :hindus
  resources :tops
  resources :opens
  resources :riffles
  resources :farrows
end
