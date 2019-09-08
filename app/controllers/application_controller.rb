class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :detect_user_agent

  private
    def detect_user_agent
      ua = request.env["HTTP_USER_AGENT"]
      if ua.include?('Mobile') || ua.include?('Android')
        @ua = 'Mobile'
      else
        # debug purpose
        #@ua = 'Mobile'
        @ua = 'Desktop'
      end
    end

    def debug(method, message)
      p 'Debug:'+self.class.name + ':' + method + ':' + message
    end

end
