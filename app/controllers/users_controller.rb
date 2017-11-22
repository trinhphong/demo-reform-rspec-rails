class UsersController < ApplicationController
    def index
        @user = User.all
    end

    def new
        @form = UserForm.new(User.new)
    end

    def create
        @form = UserForm.new(User.new)
        if @form.validate(params[:user])
            @form.full_name = params[:user][:first_name] + " " + params[:user][:last_name]
            @form.save
        else
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FAIL"
        end
    end
end
