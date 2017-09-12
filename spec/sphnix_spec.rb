require('rspec')
require('sphinx')
require('pry')

describe Riddle do
  describe ('sphinx') do

    it ("Test riddle 1: Large as a mountain, small as a pea,Endlessly swimming in a waterless sea.") do
      spx = Riddle.new("Asteroids")
      expect(spx.sphinx).to(eq(true))
    end

    it ("Test riddle 2: Always wax, yet always wane: I melt, succumbéd to the flame.Lighting darkness, with fate unblest, I soon devolve to shapeless mess.") do
      spx = Riddle.new("A candle")
      expect(spx.sphinx).to(eq(true))
    end

    it ("Test riddle 3: To you, rude would I never be,Though I flag my tongue for all to see.") do
      spx = Riddle.new("A dog")
      expect(spx.sphinx).to(eq(true))
    end
  end
end
