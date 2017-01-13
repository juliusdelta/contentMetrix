require 'oembed'

module OembedHelper
    attr_accessor :resource

    def oembed_helper(url)
        @resource = OEmbed::Providers::Youtube.get(url)

        #Code below rendered HTML iframe embed
        #render html: @resource.html.html_safe
        
        return @resource
    end
end
