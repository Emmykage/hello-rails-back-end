class Api::V1::GreetingsController < ApplicationController
    def index
        random_num = rand(Greeting.count)
        @greeting = Greeting.all[random_num].message
        render json: @greeting
    end
end
