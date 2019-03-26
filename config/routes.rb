Rails.application.routes.draw do
	root "characters#index"
	get "characters/search" => "characters#search"
	resources :adcharacters
	resources :characters, only: [:index, :show]
	resources :considerations, only: [:index, :show]
	resources :adconsiderations
	post '/upload_image' => 'adconsiderations#upload_image', :as => :froala_upload_image
	post '/upload_image_jpeg' => 'adconsiderations#upload_image_jpeg', :as => :froala_upload_image_jpeg
	post '/upload_image_resize' => 'adconsiderations#upload_image_resize', :as => :froala_upload_image_resize
	post '/upload_image_validation' => 'adconsiderations#upload_image_validation', :as => :froala_upload_image_validation
	post '/delete_image' => 'adconsiderations#delete_image', :as => :froala_delete_image

	post '/upload_file' => 'adconsiderations#upload_file', :as => :froala_upload_file
	post '/upload_file_validation' => 'adconsiderations#upload_file_validation', :as => :froala_upload_file_validation
	post '/delete_file' => 'adconsiderations#delete_file', :as => :froala_delete_file

	post '/upload_video' => 'adconsiderations#upload_video', :as => :froala_upload_video

	get '/uploads/:name' => 'adconsiderations#access_file', :as => :froala_upload_access_file, :name => /.*/
	get '/load_images' => 'adconsiderations#load_images', :as => :froala_load_images
end

