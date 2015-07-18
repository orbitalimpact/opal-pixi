require 'opal'
require 'opal-pixi'
require 'native'

class Game
  include Native
  @counter
  @direction

  def initialize
    run
  end

  def run
    height = `window.innerHeight`
    width =  `window.innerWidth`

    renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x1099bb }
    body = Native(`window.document.body`)
    body.appendChild renderer.view

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


    bunny.scale = PIXI::Point.new(10,10)

    stage.add_child(bunny)

    @counter = 0
    # start animating
    animate = Proc.new do
        `requestAnimationFrame(animate)`
        # just for fun, let's rotate mr rabbit a little
        bunny.rotation += 0.1

        fade_direction
        bunny.alpha = @counter
        #bunny.scale = @counter
        # render the container
        renderer.render stage
    end

    animate.call
  end

  def fade_direction
    @direction = :- if @counter > 250
    @direction = :+ if @counter < 1
    @counter = @counter.send(@direction,1)
  end
end
