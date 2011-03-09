LandInfo::Application.routes.draw do
  resources :survey_files do as_routes end

  root :to => "application#index"
	match ':action', :to => "application"
end
