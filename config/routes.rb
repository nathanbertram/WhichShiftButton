WhichShiftButton::Application.routes.draw do
  root :to => 'press_shift#index'
  match '/press' => 'press_shift#press', :as => :press
end
