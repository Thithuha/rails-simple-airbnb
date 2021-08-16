Rails.application.routes.draw do
  resources :flats do
    collection do
      get :top
  end
  end

end
