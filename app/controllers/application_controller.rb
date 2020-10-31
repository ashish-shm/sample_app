class ApplicationController < ActionController::Base

    def hello
        render html: "Hello All!"
    end
end
