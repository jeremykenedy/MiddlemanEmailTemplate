class EmailTemplateHelpers < Middleman::Extension
	def initialize(app, options_hash={}, &block)
		super
		@@app = app
		app.set :contentAreaCounter, 0
	end

	helpers do	  
	  def content_area(area, parameters = {})
	    @@app.set :contentAreaCounter, contentAreaCounter + 1
	    if ( is_building == true )
	      concat '<custom type="content" name="contentarea' + contentAreaCounter.to_s + '">'
	    else
	      if ( add_regions && add_regions == true )
	        region(area) do
	          concat partial("content/" + area, { :locals => parameters })
	        end
	      else
	        concat partial("content/" + area, { :locals => parameters })
	      end
	    end
	  end
	end
end

::Middleman::Extensions.register(:email_template_helpers, EmailTemplateHelpers)