require 'opal'
require 'opal-pixi'

class Game
  def initialize
    run
  end

  def run
    # var renderer = PIXI.autoDetectRenderer(800, 600,{backgroundColor : 0x1099bb});
    renderer = PIXI::WebGLRenderer.new 800, 600, { background_color: 0x1099bb }
    #$document.body << renderer.view

    # create the root of the scene graph
    #stage = PIXI::Container.new

    # create a texture from an image path
    #texture = PIXI::Texture.from_image "bunny.png"

    # create a new Sprite using the texture
    #bunny = PIXI::Sprite.new texture

    # center the sprite's anchor point
    #bunny.anchor.x = 0.5;
    #bunny.anchor.y = 0.5;
    #bunny.anchor = PIXI::Point.new(0.5, 0.5)

    # move the sprite to the center of the screen
    #bunny.position.x = 200;
    #bunny.position.y = 150;
    #bunny.position = PIXI::Point.new(200, 150)

    #stage.add_child(bunny)

    # start animating
    #animate = Proc.new do
    #  `requestAnimationFrame(animate)`
      # just for fun, let's rotate mr rabbit a little
    #  bunny.rotation += 0.1
      # render the container
    #  renderer.render stage
    #end
    #animate.call
  end
end
