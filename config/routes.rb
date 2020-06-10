Rails.application.routes.draw do

	root "homes#home"
	get "/about", to:"homes#about"
	devise_for :users
	resources :posts, only:[:new, :create, :index, :show]

	devise_for :admins
	namespace :admins do
		root "homes#home"
		resources :categories, only:[:index, :create, :destroy]
	end

end
