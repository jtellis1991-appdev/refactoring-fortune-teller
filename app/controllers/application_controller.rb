class ApplicationController < ActionController::Base

  def fortune_me
    @Zodiac = Zodiac.list.fetch(params[:astrosign].to_sym)
    @astrosign = @Zodiac.fetch(:name)
    @horoscope = @Zodiac.fetch(:horoscope)

    @array_of_numbers = Zodiac.lucky_numbers
    
    render({ :template => "astro_fortune.html.erb" })
  end

end
