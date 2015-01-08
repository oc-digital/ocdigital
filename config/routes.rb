Rails.application.routes.draw do

  devise_for :users, :skip => [:registrations, :sessions]
  as :user do
    get 'ocd/login' => 'devise/sessions#new', as: :new_user_session
    post 'ocd/login' => 'devise/sessions#create', as: :user_session
    delete 'ocd/logout' => 'devise/sessions#destroy', as: :destroy_user_session
  end

  get 'contact' => 'contacts#new', as: 'new_contact'
  post 'contact' => 'contacts#create', as: 'contact'
  get 'contact/thank-you' => 'contacts#thankyou', as: 'thankyou_contact'

  root :to => "content#index"
end
