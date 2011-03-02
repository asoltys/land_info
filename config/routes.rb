LandInfo::Application.routes.draw do
  resources :survey_files

  root :to => "application#index"
	match ':action', :to => "application"
end
