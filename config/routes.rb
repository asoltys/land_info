LandInfo::Application.routes.draw do
  resources :survey_files do as_routes end
  resources :plan_files do as_routes end
  resources :marine_files do as_routes end
  resources :provinces do as_routes end
  resources :land_districts do as_routes end
  resources :features do as_routes end
  resources :locations do as_routes end
  resources :regions do as_routes end
  resources :surveyors do as_routes end

  root :to => "application#index"
	match ':action', :to => "application"
end
