module PIXI
  class WebGLRenderer
    %x{
    #{self}._proto = window.PIXI.WebGLRenderer.prototype, def = #{self}._proto;
            window.PIXI.WebGLRenderer.prototype._klass = #{self};
    }
    def self.new(width, height, options)
      `new window.PIXI.WebGLRenderer(width, height , #{ options.to_n })`
    end

    def render(stage)
      `self.render(stage)`
    end

    def view
      `self.view`
    end

    def height
      `self.height`
    end

    def width
      `self.width`
    end

  end
end
