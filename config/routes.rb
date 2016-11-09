Rails.application.routes.draw do

  root 'people#index'

  resources :people do
    resources :animals
  end
end

  #resources :people do
    #resources :animals
    #resources :houses
    #resources :cars
  #end

  #resources :people do
    #resources :animals do    ****Not reccommdended to nest more than that****
      #resources :spots
    #end
  #end
