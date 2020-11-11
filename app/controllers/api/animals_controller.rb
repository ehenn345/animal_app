class Api::AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render 'index.json.jb'
  end

  def show
    @animal = Animal.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @animal = Animal.new(
      name: params[:name],
      age: params[:age],
      colors: params[:colors]
    )
    render 'show.json.jb'
  end
  
end
