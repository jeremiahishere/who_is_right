class VotesController < ApplicationController
  
  def index
    @people = Person.all

    render :index
  end

  def count_vote
    vote = Vote.new(:person_id => params[:person_id], :weight => 1, :ip_address => request.remote_ip)
    if vote.valid?
      vote.save
    end

    output = {}
    Person.all.each do |person|
      output[person.id] = person.vote_percentage
    end

    respond_to do |format|
      format.json { render :json  => output }
    end
  end
end
