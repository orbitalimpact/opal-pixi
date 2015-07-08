
module PIXI
  class Point
    %x{
    #{self}._proto = window.PIXI.Point.prototype, def = #{self}._proto;
            window.PIXI.Point.prototype._klass = #{self};
    }
    def self.new(text ,options )
      `new window.PIXI.Point(text, #{ options.to_n })`
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
