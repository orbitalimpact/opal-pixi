require 'opal'
require 'opal-pixi'
require 'native'

module PIXI
  class Examples
    include Native

    def initialize
      #basic
      #container
      spritesheet
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

    def spritesheet
      height = `window.innerHeight`
      width =  `window.innerWidth`

      renderer = PIXI::WebGLRenderer.new width, height
      body = Native(`window.document.body`)
      body.appendChild renderer.view

      # create the root of the scene graph
      stage = PIXI::Container.new

      movie = nil

      # start animating
      animate = Proc.new do
        movie.rotation += 0.01;
        # render the container
        renderer.render stage
        `requestAnimationFrame(animate)`
      end

      on_assets_loaded = Proc.new do
        # create an array of textures from an image path
        frames = []

        (0...30).each do |i|
          val = sprintf '%02d', i
          # magically works since the spritesheet was loaded with the pixi loader
          frames << PIXI::Texture.from_frame('rollSequence00' + val + '.png')
        end

        # create a MovieClip (brings back memories from the days of Flash, right ?)
        movie = PIXI::MovieClip.new(frames)

        # A MovieClip inherits all the properties of a PIXI sprite
        # so you can change its position, its anchor, mask it, etc
        movie.position = PIXI::Point.new(width/2,height/2)
        movie.anchor = PIXI::Point.new(0.5,0.5)
        movie.animation_speed = 0.5
        movie.play

        stage.add_child(movie)

        animate.call
      end

      `PIXI.loader.add('assets/fighter.json').load(on_assets_loaded)`

    end

  end
end
