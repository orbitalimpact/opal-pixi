require './base'

module PIXI
  class Point
    #include PIXI::Base
    # name = "window.#{self.name.split('::').join('.')}"
    # code = "self._proto = #{name}.prototype, def = self._proto; #{name}.prototype._klass = self"
    # # %x{ alert(code) }
    # %x{ eval(code) }

    %x{
      self._proto = window.PIXI.Point.prototype, def = self._proto;
              window.PIXI.Point.prototype._klass = self;
    }

    def self.new(x,y)
      `new window.PIXI.Point(x,y)`
    end

    def x
      `self.x`
    end

    def x=(val)
      `self.x = val`
    end

    def y
      `self.y`
    end

    def y=(val)
      `self.y = val`
    end

  end
end
