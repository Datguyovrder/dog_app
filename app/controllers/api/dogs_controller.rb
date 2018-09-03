class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render 'index.json.jbuilder'
  end

  def create
    @dog = Dog.new(name: params[:name],
                   breed: params[:breed],
                   age: params[:age],
                   color: params[:color]
                  )
    @dog.save
    render 'show.json.jbuilder'
  end

  def show
    @dog = Dog.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.name = params[:name] || @dog.name
    @dog.breed = params[:breed] || @dog.breed
    @dog.age = params[:age] || @dog.age
    @dog.color = params[:color] || @dog.color
    render 'show.json.jbuilder'
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    render json: {message: "dog successfully destroyed"}
  end
end
