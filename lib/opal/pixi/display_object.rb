module PIXI
  class DisplayObject

    %x{
    #{self}._proto = window.PIXI.DisplayObject.prototype, def = #{self}._proto;
            window.PIXI.DisplayObject.prototype._klass = #{self};
    }

    def position
      `self.position`
    end

    def position=(point)
      `self.position = point`
    end

  end
end
