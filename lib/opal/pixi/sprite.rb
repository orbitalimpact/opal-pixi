module PIXI
  class Sprite
    %x{
    #{self}._proto = window.PIXI.Sprite.prototype, def = #{self}._proto;
            window.PIXI.Sprite.prototype._klass = #{self};
    }
    def self.new(texture)
      `new window.PIXI.Sprite(texture)`
    end
    def anchor
      Point.new `#{self}.anchor.x`,`#{self}.anchor.y`
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
    def position=(p)
      `self.position = p`
    end

    def position()
      `self.position`
    end

    def width()
      `self.width`
    end

  end
end
