require './base'

module PIXI
  class Texture
    include Native

    %x{
      self._proto = window.PIXI.Texture.prototype, def = self._proto;
              window.PIXI.Texture.prototype._klass = self;
    }

    def self.from_image(name)
      new(`PIXI.Texture.fromImage(name)`)
    end
  end
end
