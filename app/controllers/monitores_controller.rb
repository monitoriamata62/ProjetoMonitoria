class MonitoresController < ApplicationController
    def index
        @user = User.where(role: 'monitor')
    end

end
