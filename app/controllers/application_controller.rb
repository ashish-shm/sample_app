class ApplicationController < ActionController::Base

    def hello
        render html: "Hello All! Lets start"
    end
end
