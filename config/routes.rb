ActionController::Routing::Routes.draw do |map|
	# RESTful routes
  #map.resources :modes
  #map.resources :schedules
  map.resources :notifications
  
  # default section routes
  map.connect 'modes', :controller => 'modes', :action => 'index'
  map.connect 'notifications', :controller => 'notifications', :action => 'index'
  map.connect 'resources', :controller => 'resources', :action => 'index'
  map.connect 'schedules', :controller => 'schedules', :action => 'index'
  map.connect 'controls', :controller => 'controls', :action => 'index'
  map.connect 'community', :controller => 'community', :action => 'bulletin'
  map.connect 'mobile', :controller => 'mobile', :action => 'index'

  # home/default route
  map.root :controller => "main", :action => 'overview'

	# default routes
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
