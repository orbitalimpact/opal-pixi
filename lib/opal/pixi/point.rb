
module PIXI
  class Point
    %x{
    #{self}._proto = window.PIXI.Point.prototype, def = #{self}._proto;
            window.PIXI.Point.prototype._klass = #{self};
    }
    def self.new(x,y)
      `new window.PIXI.Point(x,y)`
    end
  end
end
