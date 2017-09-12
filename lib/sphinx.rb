#!/usr/bin/env ruby

class Riddle
  attr_reader(:question , :riddles, :answer)
  def initialize()
    @riddles = {
      "Large as a mountain, small as a pea,Endlessly swimming in a waterless sea." => "Asteroid",

      "Always wax, yet always wane: I melt, succumbéd to the flame.Lighting darkness, with fate unblest, I soon devolve to shapeless mess." => "A candle",

      "To you, rude would I never be,Though I flag my tongue for all to see." => "A dog"}
  end

  def sphinx_picker
    @question = @riddles.keys.sample()
  end

  def sphinx?(answer)
    if riddles.fetch(question) == answer
      return true
    end
  end
end
