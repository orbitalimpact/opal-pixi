module PIXI::Examples

class RenderTexture < PIXI::Examples::Base
  def initialize(menu, renderer)
    height = `window.innerHeight`
    width =  `window.innerWidth`

    # renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x66FF99 }
    # body = Native(`window.document.body`)
    # body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new

    # create a container
    container = PIXI::Container.new

    container.pivot = PIXI::Point.new(200, 200)

    # add the container to the stage
    stage.add_child(container)

    # create a texture from an image path
    texture = PIXI::Texture.from_image "assets/bunny.png"

    5.times do |x|
      5.times do |y|
        bunny = PIXI::Sprite.new texture
        bunny.position = PIXI::Point.new(20 * x, 20 * y)
        bunny.rotation = `Math.random()` * (`Math.PI` * 2)
        container.add_child(bunny)
      end
    end

    container.position = PIXI::Point.new(width/2,height/2)

    rt = PIXI::RenderTexture.new(renderer, 200, 200, `PIXI.SCALE_MODES.LINEAR`, 0.6)

    sprite = PIXI::Sprite.new(rt)
    sprite.position = PIXI::Point.new(width/2,height/2+container.height)
    sprite.pivot = PIXI::Point.new(15, 15)
    stage.add_child(sprite)

    # start animating
    animate = Proc.new do
        `requestAnimationFrame(animate)`
        # just for fun, let's rotate all the bunnies
        sprite.rotation += 0.01
        rt.render(container)

        # render the container
        renderer.render stage
    end

    # add the menu
    stage.add_child(menu)

    animate.call

    @destroy = Proc.new {

    }
    
  end
end

end
