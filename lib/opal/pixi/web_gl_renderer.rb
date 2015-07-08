module PIXI
  class WebGLRenderer  < `PIXI.WebGLRenderer`

    def self.new(width, height, options)
      `new PIXI.WebGLRenderer(width, height , #{ options.to_n })`
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
