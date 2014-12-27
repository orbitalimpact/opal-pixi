module PIXI
  class Texture
    %x{
    #{self}._proto = window.PIXI.Texture.prototype, def = #{self}._proto;
            window.PIXI.Texture.prototype._klass = #{self};
    }
    def self.from_image(name)
      `window.PIXI.Texture.fromImage(name)`
    end
  end
end
