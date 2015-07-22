module PIXI::Examples

class TilingSprite < PIXI::Examples::Base
  def initialize(menu, renderer)
    height = `window.innerHeight`
    width =  `window.innerWidth`

    # renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x66FF99 }
    # body = Native(`window.document.body`)
    # body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new

    # create a texture from an image path
    texture = PIXI::Texture.from_image "assets/p2.jpeg"

    # create a tiling sprite ...
    # requires a texture, a width and a height
    # in WebGL the image size should preferably be a power of two
    #tiling_sprite = PIXI::Extras::TilingSprite.new(texture, renderer.width, renderer.height)
    tiling_sprite = PIXI::Extras::TilingSprite.new(texture, renderer.width, renderer.height)
    stage.add_child(tiling_sprite)

    count = 0

    # start animating
    animate = Proc.new do
      count += 0.005

      # TODO: Cant use ruby Math module directly without building it
      # http://stackoverflow.com/questions/27929098/cannot-use-ruby-math-library-with-opal
      tiling_sprite.tile_scale.x = 2 + `Math.sin(count)`
      tiling_sprite.tile_scale.y = 2 + `Math.cos(count)`

      tiling_sprite.tile_position.x += 1
      tiling_sprite.tile_position.y += 1

      # render the container
      renderer.render stage
      `requestAnimationFrame(animate)`
    end

    # add the menu
    stage.add_child(menu)

    animate.call

    @destroy = Proc.new {
      # animate = nil
      # stage.destroy
    }

  end
end

end
