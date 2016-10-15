Rails.application.routes.draw do

  get 'clickable'           => 'maps#clickable'
  get 'data_binding'        => 'maps#data_binding'
  get 'directions'          => 'maps#directions'
  get 'flyby'               => 'maps#flyby'
  get 'geocoder'            => 'maps#geocoder'
  get 'languages'           => 'maps#languages'
  get 'navigation_controls' => 'maps#navigation_controls'
  get 'restriction_pane'    => 'maps#restriction_pane'

  root to: "static_pages#home"
end
