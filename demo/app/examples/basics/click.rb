module PIXI::Examples

class Click < PIXI::Examples::Base
  def initialize(menu, renderer)
    height = `window.innerHeight`
    width =  `window.innerWidth`

    # renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x1099bb }
    # body = Native(`window.document.body`)
    # body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new

    # create a texture from an image path
    texture = PIXI::Texture.from_image "assets/bunny.png"

    # create a new Sprite using the texture
    bunny = PIXI::Sprite.new texture

    # # center the sprite's anchor point
    bunny.anchor.x = 0.5
    bunny.anchor.y = 0.5

    # move the sprite to the center of the screen
    bunny.position.x = width / 2
    bunny.position.y = height / 2

    # lets have a big bunny
    bunny.scale = PIXI::Point.new(1,1)

    # add him to the stage
    stage.add_child(bunny)

    # start animating
    animate = Proc.new do
      `requestAnimationFrame(animate)`
      # just for fun, let's rotate mr rabbit a little
      bunny.rotation += 0.01

      # render the container
      renderer.render stage
    end

    onDown = Proc.new do
      bunny.scale.x += bunny.scale.x * 0.3
      bunny.scale.y += bunny.scale.y * 0.3
    end

    bunny.interactive = true
    bunny.on('mousedown', onDown)
    bunny.on('touchstart', onDown)

    # add the menu
    stage.add_child(menu)

    animate.call

    @destroy = Proc.new do
      animate = nil
    end

  end

end

end
