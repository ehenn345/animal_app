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
    @animal.save
    render 'show.json.jb'
  end
  
  def update
    @animal = Animal.find_by(id: params[:id])
    @animal.name = params[:name] || @animal.name
    @animal.age = params[:age] || @animal.age
    @animal.colors = params[:colors] || @animal.colors
    @animal.save
    render 'show.json.jb'
  end

  def destroy
    animal = Animal.find_by(id: params[:id])
    animal = animal.destroy
    render json: {message: "Item deleted."}
  end

  
end
