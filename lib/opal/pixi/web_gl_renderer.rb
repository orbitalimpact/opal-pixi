#require './base'

module PIXI
  class WebGLRenderer
    include Native

    %x{
      self._proto = window.PIXI.WebGLRenderer.prototype, def = self._proto;
              window.PIXI.WebGLRenderer.prototype._klass = self;
    }

    def self.new(width, height, options)
      %x{new window.PIXI.WebGLRenderer(width, height, { backgroundColor : #{options[:background_color]} })}
    end

    def render(object)
      `self.render(object)`
    end

    def destroy(removeView)
      `self.destroy(removeView)`
    end

    alias_native :render
    alias_native :view
    alias_native :width
    alias_native :height

  end
end
