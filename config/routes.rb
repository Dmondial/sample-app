Rails.application.routes.draw do
  resources :tests do
    collection do
      get 'sound_for'
    end
  end

end
