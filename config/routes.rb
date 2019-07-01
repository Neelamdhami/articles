Rails.application.routes.draw do
  get 'welcome/index'

	get 'welcome/index'
	
	resources :articles
	resources :products
	root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :articles do
 	 resources :comments
	end


	



	get 'delete/my_own_article/:my_article_id', :to => 'articles#geeta', as: :neelam_destroy

	#get 'delete/my_own_product/:my_product_id', :to => 'product#geeta', as: :delete_destroy


end
