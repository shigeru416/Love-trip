Rails.application.routes.draw do

	root "homes#home"
	get "/about", to:"homes#about"
	devise_for :users

	devise_for :admins
	namespace :admins do
		root "homes#home"
	end

end
