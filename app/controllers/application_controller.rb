class ApplicationController < ActionController::Base

    include SessionsHelper

    def hello
        render html: "Hello All! Lets start"
    end
end
