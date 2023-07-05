class PowersController < ApplicationController
    def index
        powers=Power.all.map do |power|
            {
                id:power.id,
                name:power.name,
                description:power.description
            }
        end
        render json:powers
    end

    def show
        power=Power.find_by(id:params[:id])
        if power
            render json: {
                id:power.id,
                name:power.name,
                description:power.description
            }
        else render json: {error: 'Power not found'},status: :not_found
        end
    end

    def update
        power=Power.find_by(id:params[:id])
        if power
            if power.update(power_params)
                render json:{
                    id:power.id,
                    name:power.name,
                    description:power.description
                }
            else render json: {errors:
        power.errors.full_messages},status: :unprocessable entity
            end
        else render json: {error:'Power not found'},status: :not_found
        end
    end

    private
    def power_params
        params.require(:power).permit(:description)
    end
end
