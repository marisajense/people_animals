class AnimalsController < ApplicationController
  before_action :set_person
  before_action :set_animal, except: [:index, :new, :create]

  def index
    @animals = @person.animals
  end

  def show
    #@animal = @person.animals.find(params[:id]) -- We made this a method
  end

  def new
    @animal = @person.animals.new
  end

  def create
    @animal = @person.animals.new(animal_params)   #need animal and person to link the 2 sets a person_id on this animal
    if @animal.save
      redirect_to person_animal_path(@person, @animal) #because routes wants both id's
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @animal.update(animal_params)
      redirect_to person_animal_path(@person, @animal)
    else
      render :edit
    end
  end

  def destroy
    @animal.destroy
    redirect_to person_animals_path(@person)
  end

  private
  def animal_params
    params.require(:animal).permit(:name, :age, :alive, :species)
  end

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_animal
    @animal = @person.animals.find(params[:id])
  end
end
