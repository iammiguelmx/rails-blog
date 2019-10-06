Rails.application.routes.draw do

  
  Blog::Application.routes.draw do
    resources :articles
    root 'welcome#index'
  end



end


