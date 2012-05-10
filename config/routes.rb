LandInfo::Application.routes.draw do
  devise_for :users

  resources :drawings do as_routes end
  resources :features do as_routes end
  resources :land_districts do as_routes end
  resources :locations do
    as_routes 
    get :autocomplete_location_name, :on => :collection
  end
  resources :marine_files do as_routes end
  resources :plan_files do as_routes end
  resources :provinces do as_routes end
  resources :regions do as_routes end
  resources :survey_files do 
    as_routes 
    get :autocomplete_survey_file_survey_file, :on => :collection
  end
  resources :surveyors do as_routes end

  root :to => "survey_files#index"
	match 'francais', :to => "application#francais"
  match 'help', :to => "application#help"
end
