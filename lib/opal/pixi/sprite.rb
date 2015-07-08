
module PIXI
  class Sprite < `PIXI.Sprite`


    def self.new(texture)
      `new PIXI.Sprite(texture)`
    end
    def anchor
      Point.new `self.anchor.x`,`self.anchor.y`
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
