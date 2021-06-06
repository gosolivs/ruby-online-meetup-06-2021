module FrontendHelper
  class OnlyHtmlConstraint
    def matches?(request)
      !request.xhr? and request.format == 'html'
    end
  end
end
