require './base'

module PIXI
  class DisplayObject
    #include PIXI::Base
    # class_name = self.name.split('::').last || ''
    # code = "self._proto = window.PIXI.#{class_name}.prototype, def = self._proto; window.PIXI.#{class_name}.prototype._klass = self"
    # # %x{ alert(code) }
    # %x{ eval(code) }

    %x{
      self._proto = window.PIXI.DisplayObject.prototype, def = self._proto;
              window.PIXI.DisplayObject.prototype._klass = self;
    }

    def position
      `self.position`
    end

    def position=(point)
      `self.position = point`
    end

    def rotation
      `self.rotation`
    end

    def rotation=(r)
      `self.rotation = r`
    end

    def anchor=(a)
      `self.anchor = a`
    end

    def anchor
      Point.new `self.anchor.x`,`self.anchor.y`
    end

  end
end
