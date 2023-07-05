class HeroPowersController < ApplicationController
    def create
        hero=Hero.find_by(
            id:hero_power_params[:hero_id]
        )
        power=Power.find_by(
            id:hero_power_params[:power_id]
        )
        if hero && power
            hero_power=
            HeroPower.new(hero_power_params.merge(hero:hero,power:power))
            if  hero_power.save
                render json: {
                    id:hero.id,
                    name:hero.name,
                    super_name:hero.super_name,
                    powers:hero.powers.map do |power|
                        {
                            id:power.id,
                            name:power.name,
                            description:power.description
                        }
                    end
                }
            else render json: {errors:
        hero_power.errors.full_messages},status: :unprocessable_entity
            end
        else render json: {error:'Hero or Power not found'},status: :not_found
        end
    end
    private
    def hero_power_params
        params.require(:hero_power).permit(:strength,:power_id,:hero_id)
    end
end
