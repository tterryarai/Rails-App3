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

    def group1_check
      # remember latest group1
      if params[:group1].present?
        @group1 = params[:group1]
        session[:group1] = params[:group1]
      else
        @group1 = '0'
        session[:group1] = '0'
      end
    end

    def keyword_check
      # search keyword is follows;
      if params[:search].present?
        @keyword = params[:search]
      else
        @keyword = ''
      end
    end

    def page_control
      # remember latest page
      if params[:page].present?
        @page = params[:page]
        session[:page] = params[:page]
      else
        @page = 1
        session[:page] = 1
      end
    end

    def debug(method, message)
      p 'Debug:'+self.class.name + ':' + method + ':' + message
    end

end
