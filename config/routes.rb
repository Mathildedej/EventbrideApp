Rails.application.routes.draw do
  # home 
  root to: 'events#index'
  devise_for :users

  # pour regler le probleme de get quand je fais sign_out
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
