Rails.application.routes.draw do
  root 'twit#list'
  
  get 'twit/list'

  get 'twit/list_byuser'

  post 'twit/create'

  get 'twit/edit_view'

  post 'twit/edit'

  get 'twit/delete'
  
  post 'twit/createComment'
  
  get 'twit/deleteComment'

end
