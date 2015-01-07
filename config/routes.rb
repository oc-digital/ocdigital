Rails.application.routes.draw do

  get 'contact' => 'contacts#new', as: 'new_contact'
  post 'contact' => 'contacts#create', as: 'contact'
  get 'contact/thank-you' => 'contacts#thankyou', as: 'thankyou_contact'

  root :to => "content#index"
end
