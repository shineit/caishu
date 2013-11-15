Backend::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  resources :users

  root :to => 'categories#index'
  resources :categories do
    collection do
      get 'delete'
    end
  end
  
  resources :photos do
  	collection do
  		get 'delete'
  	end
  end

  resources :focus do
    collection do
      get 'delete'
      get 'edit'
    end
  end

  resources :messages do
    get 'existence', :on => :collection
    get 'inexistence', :on => :collection
  end

  resources :jokes do
    get 'delete', :on => :collection
    get 'add_from_spider', :on => :collection
    get 'delete_empty_record', :on => :collection
  end

  resources :musics do
    get 'delete', :on => :collection
  end

  resources :weblinks do
    get 'delete', :on => :collection
  end

  resources :photos do
    get 'delete', :on => :collection
  end

  resources :moods do
    get 'delete', :on => :collection
  end

  resources :essays do
    get 'delete', :on => :collection
  end

  resources :philosophies do
    get 'delete', :on => :collection
  end

  resources :photo_categories do 
    get 'delete', :on => :collection
  end

  resources :notes do
    get 'delete', :on => :collection
  end

  resources :note_categories do 
    get 'delete', :on => :collection
  end

  resources :goodfriends do 
    get 'delete', :on => :collection
  end

end
