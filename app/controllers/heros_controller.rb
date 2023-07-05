class HerosController < ApplicationController
    def index
        heroes=[
            {id:1,name:'Kamala Khan',super_name:'Ms.Marvel'},
            {id:2,name:'Doreen Green',super_name:'Squirrel Girl'},
            {id:3,name:'Gwen Stacy',super_name:'Spider Gwen'}
        ]
        render json:heroes
    end

    def show
        hero=Hero.find_by(id:params[:id])
        if hero
            hero_data={
                id:hero.id,
                name:hero.name,
                super_name:hero.super_name,
                powers:hero.powers.map do |power|
                {id:power.id,
            name:power.name,
        description:power.description}
                end
            }
            render json:hero_data
        else render json :{error:'Hero not found'},status: :not_found
        end 
    end
end
