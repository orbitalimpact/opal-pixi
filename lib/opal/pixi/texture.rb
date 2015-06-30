require './base'

module PIXI
  class Texture
    # include PIXI::Base
    # name = "window.#{self.name.split('::').join('.')}"
    # code = "self._proto = #{name}.prototype, def = self._proto; #{name}.prototype._klass = self"
    # # %x{ alert(code) }
    # %x{ eval(code) }

    %x{
      self._proto = window.PIXI.Texture.prototype, def = self._proto;
              window.PIXI.Texture.prototype._klass = self;
    }

    def self.from_image(name)
      `window.PIXI.Texture.fromImage(name)`
    end
  end
end
