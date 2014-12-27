module PIXI
  class WebGLRenderer
    %x{
    #{self}._proto = window.PIXI.WebGLRenderer.prototype, def = #{self}._proto;
            window.PIXI.WebGLRenderer.prototype._klass = #{self};
    }
    def self.new(width, height)
      `new window.PIXI.WebGLRenderer(width, height)`
    end

    def render(stage)
      `self.render(stage)`
    end

    def view
      `self.view`
    end
  end
end
