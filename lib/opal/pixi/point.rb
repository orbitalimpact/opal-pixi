
module PIXI
  class Point < `PIXI.Point`

    def self.new(text ,options )
      `new PIXI.Point(text, #{ options.to_n })`
    end

    def set(x,y)
      `self.set(x,y)`
    end

    def add(x1,y1)
      `self.set( self.x + x1 , self.y + y1 )`
    end

    def x
      `self.x`
    end
    def y
      `self.y`
    end
  end
end
