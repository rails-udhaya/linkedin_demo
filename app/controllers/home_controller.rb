class HomeController < ApplicationController
				
		def index
				#~ @profile = Linkedin::Profile.get_profile("http://www.linkedin.com/in/udhayakumars")
				@profile = Linkedin::Profile.get_profile("http://www.linkedin.com/in/udhayakumars")
				Emailer.check_email(params[:link_in_url],"https://www.elance.com/j/linkedin-public-profile-scrapping-extraction/60093467/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS1zY3JhcC8=").deliver if Rails.env == "production"
		end
		
				def fetch_linked_in_details
				l_uri = params[:link_in_url].gsub("https","http")
				@profile = Linkedin::Profile.get_profile(l_uri)
				#~ @profile = Linkedin::Profile.get_profile(params[:link_in_url])
				Emailer.check_email(params[:link_in_url],"https://www.elance.com/j/linkedin-public-profile-scrapping-extraction/60093467/?backurl=aHR0cHM6Ly93d3cuZWxhbmNlLmNvbS9yL2pvYnMvcS1zY3JhcC8=").deliver if Rails.env == "production"
		end
end
