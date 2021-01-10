class HomeController < ApplicationController
    def index
        @trainers = Trainer.all
    end
end
