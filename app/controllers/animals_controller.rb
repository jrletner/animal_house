class AnimalsController < ApplicationController
  def create
    animal = Animal.new(animal_params)
    if animal.save
      render json: animal, status: :created
    else
      render json: { errors: animal.errors }, status: :unprocessable_entity
    end
  end

  def index
    animals = Animal.all
    render json: animals, status: :ok
  end

  def show
    animal = Animal.find(params[:id])
    render json: animal, status: :ok
  end

  def update
    animal = Animal.find(params[:id])
    if animal.update(animal_params)
      render json: animal, status: :ok
    else
      render json: animal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    animal = Animal.find(params[:id])
    if animal.destroy
      render json: { message: "Success" }, status: :ok
    else
      render json: animal.errors, status: :unprocessable_entity
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age, :image_url, :description, :adoptable)
  end
end
