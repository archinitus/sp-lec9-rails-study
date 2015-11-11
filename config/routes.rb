Rails.application.routes.draw do
  root 'twit#list'
  
  get 'user/create'

  get 'user/login'
  
  get 'twit/list'

  get 'twit/list_byuser'

  post 'twit/create'

  get 'twit/edit_view'

  post 'twit/edit'

  get 'twit/delete'
  
  post 'twit/createComment'
  
  post 'twit/deleteComment'

end
