Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'job#list'
  get 'job/list'
  get 'job/new'
  post 'job/create'
  patch 'job/update'
  get 'job/list'
  get 'job/show'
  get 'job/edit'
  get 'job/delete'
  get 'job/update'
end
