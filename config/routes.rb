Rails.application.routes.draw do
  root "character#index"
  post '/upload_image' => 'adconsiderations#upload_image', :as => :upload_image
  resources :adcharacters
  resources :characters, only: [:index, :show]
  resources :considerations, only: [:index, :show]
  resources :adconsiderations
end
