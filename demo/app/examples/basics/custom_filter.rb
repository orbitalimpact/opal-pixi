
module PIXI::Examples

  # function CustomFilter(fragmentSource)
  # {
  #     PIXI.AbstractFilter.call(this,
  #         // vertex shader
  #         null,
  #         // fragment shader
  #         fragmentSource,
  #         // set the uniforms
  #         {
  #             customUniform : {type : '1f', value : 0}
  #         }
  #     );
  # }
  #
  # CustomFilter.prototype = Object.create(PIXI.AbstractFilter.prototype);
  # CustomFilter.prototype.constructor = CustomFilter;


class CustomFilter
  def initialize
    height = `window.innerHeight`
    width =  `window.innerWidth`

    renderer = PIXI::WebGLRenderer.new width, height, { "backgroundColor" => 0x000000 }
    body = Native(`window.document.body`)
    body.appendChild renderer.view

    # create the root of the scene graph
    stage = PIXI::Container.new
    container = PIXI::Container.new

    class ACustomFilter < PIXI::AbstractFilter
      def initialize(fragmentSource)
        super(`null`,fragmentSource, { 'customUniform' => {'type' => '1f', 'value' => 0} } )
      end
    end

    # create a background sprite from an image path
    background = PIXI::Sprite.from_image "assets/bkg-grass.jpg"
    background.scale.set(1.3,1)
    container.add_child(background)

    container.x = 280
    container.y = 100

    stage.add_child(container)

    filter = nil

    # start animating
    animate = Proc.new do
        filter.uniforms.customUniform.value += 0.04
        renderer.render(stage)
        `requestAnimationFrame(animate)`
    end

    on_assets_loaded = Proc.new do |loader,res|
        fragmentSrc = `res.shader.data`
        filter = ACustomFilter.new(fragmentSrc)
        background.filters = [filter]
        animate.call
    end

    `PIXI.loader.add('shader','assets/shader.frag')`
    `PIXI.loader.once('complete',on_assets_loaded)`
    `PIXI.loader.load()`

  end
end

end
