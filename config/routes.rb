Rails.application.routes.draw do
  root 'leads#new' # Página inicial com o formulário de contato
  resources :leads, only: [:new, :create]

end
