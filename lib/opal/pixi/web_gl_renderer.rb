module PIXI
  class WebGLRenderer
    %x{
    #{self}._proto = window.PIXI.WebGLRenderer.prototype, def = #{self}._proto;
            window.PIXI.WebGLRenderer.prototype._klass = #{self};
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

    def view
      `self.view`
    end
  end
end
