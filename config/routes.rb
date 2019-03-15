Rails.application.routes.draw do
  resources :students

  get '/students/:id/activate', to: 'students#activate_student', as: 'activate_student'

  # get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  # patch '/students/:id/activate_patch', to: 'students#activate_patch'
  # first attempt

end
