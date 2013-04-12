WhoIsRight::Application.routes.draw do
  root :to => 'votes#index'
  match "count_vote/:person_id", :to => "votes#count_vote"
end
