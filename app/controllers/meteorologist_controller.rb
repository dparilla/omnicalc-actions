require 'open-uri'

class MeteorologistController < ApplicationController
  def street_to_weather
    @street_address = params.fetch("user_street_address")
    url_safe_street_address = URI.encode(@street_address)

    # ==========================================================================
    # Your code goes below.
    # The street address the user input is in the string @street_address.
    # A URL-safe version of the street address, with spaces and other illegal
    #   characters removed, is in the string url_safe_street_address.
    # ==========================================================================

    @current_temperature = "Replace this string with your answer"

    @current_summary = "Replace this string with your answer"

    @summary_of_next_sixty_minutes = "Replace this string with your answer"

    @summary_of_next_several_hours = "Replace this string with your answer"

    @summary_of_next_several_days = "Replace this string with your answer"

    render("meteorologist_templates/street_to_weather.html.erb")
  end
end
