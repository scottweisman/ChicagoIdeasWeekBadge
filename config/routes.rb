Ideasweekbadge::Application.routes.draw do
  resources :users

  root :to => 'users#new'

  # get '/export_data/', :to => 'users#export_data', :as => :export_data


end