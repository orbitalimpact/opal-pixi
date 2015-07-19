require 'opal'
require 'opal-pixi'
require 'native'

module PIXI
  class Examples
    include Native

    def initialize
      #basic
      container
    end

    def basic
      height = `window.innerHeight`
      width =  `window.innerWidth`

      renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x66FF99 }
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

      # lets have a big bunny
      bunny.scale = PIXI::Point.new(10,10)

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

      animate.call
    end

    def container
      height = `window.innerHeight`
      width =  `window.innerWidth`

      renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x66FF99 }
      body = Native(`window.document.body`)
      body.appendChild renderer.view

      # create the root of the scene graph
      stage = PIXI::Container.new

      # create a container
      container = PIXI::Container.new

      container.pivot = PIXI::Point.new(200, 200)

      # add the container to the stage
      stage.add_child(container)

      # create a texture from an image path
      texture = PIXI::Texture.from_image "assets/bunny.png"

      10.times do |x|
        10.times do |y|
          bunny = PIXI::Sprite.new texture
          bunny.position = PIXI::Point.new(40 * x, 40 * y)
          container.add_child(bunny)
        end
      end

      container.position = PIXI::Point.new(width/2,height/2)

      # start animating
      animate = Proc.new do
          `requestAnimationFrame(animate)`
          # just for fun, let's rotate all the bunnies
          container.rotation += 0.01

          # render the container
          renderer.render stage
      end

      animate.call

    end

  end
end
