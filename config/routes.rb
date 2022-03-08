Rails.application.routes.draw do
  resources :dogs, only: [:create, :show, :index, :update, :destroy] do
    collection do 
      get 'find/:id'=> 'dogs#find'
    end
  end
end
