class DogsController < ApplicationController
    def index
        p params[:id]
        if params[:id]
            render json: Dog.find(params[:id])
        end
        render json: Dog.all
    end

    def create
        dog = Dog.create(dog_param)
        render json: dog
    end

    def update
        dog = Dog.find(params[:id])
        dog.update(dog_param)
        render json: dog
    end

    def destroy
        Dog.destroy(params[:id])
    end

    def show
        dog = Dog.find(params[:id])
        render json: dog
    end


    def find
        dog = Dog.find(params[:id])
        render json: dog
    end



    private

    def dog_param
        params.require(:dog).permit(:name,:age)
    end


end
