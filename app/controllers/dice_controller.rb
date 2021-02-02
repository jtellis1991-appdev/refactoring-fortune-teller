class DiceController < ApplicationController

  def dice_roll
    @dice_roll = params[:count]
    @dice_side = params[:side]
  
    @array_of_numbers = Array.new

    @dice_roll.to_i.times do
      another_number = rand(1..@dice_side.to_i)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "dice_templates/rolling.html.erb"})
  end

end
