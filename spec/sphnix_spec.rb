require('rspec')
require('sphinx')
require('pry')

describe Riddle do
  describe ('sphinx') do
    spx = Riddle.new()

    it ("Test riddle 1: Large as a mountain, small as a pea,Endlessly swimming in a waterless sea.") do
      expect(spx.sphinx?("Asteroids")).to(eq(true))
    end

    it ("Test riddle 2: Always wax, yet always wane: I melt, succumbéd to the flame.Lighting darkness, with fate unblest, I soon devolve to shapeless mess.") do
      expect(spx.sphinx?("A candle")).to(eq(true))
    end

    it ("Test riddle 3: To you, rude would I never be,Though I flag my tongue for all to see.") do
      expect(spx.sphinx?("A dog")).to(eq(true))
    end
  end
end
