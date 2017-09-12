#!/usr/bin/env ruby

class Riddle
  def initialize 
    @riddles = {
      "Large as a mountain, small as a pea,Endlessly swimming in a waterless sea." => "Asteroid",

      "Always wax, yet always wane: I melt, succumbéd to the flame.Lighting darkness, with fate unblest, I soon devolve to shapeless mess." => "A candle",

      "To you, rude would I never be,Though I flag my tongue for all to see." => "A dog"}
    @question = @riddles.keys.sample()
  end

  def sphinx(answer)
    if @riddles.fetch(@question[0]) == answer
      return true
    end
  end
end

  # def riddle1
  #   if @input == @answer1
  #     return true
  # end
  #
  # def riddle2
  #   if @input == @answer2
  #     return true
  # end
  #
  # def riddle3
  #   if @input == @answer3
  #     return true
  # end
