module PIXI
  class AbstractFilter
    include Native

    def initialize(vertexSrc, fragmentSrc, uniforms={})
      super(`new PIXI.AbstractFilter(vertexSrc, fragmentSrc, #{uniforms.to_n})`)
    end

    alias_native :padding
    alias_native :uniforms
    alias_native :get_shader, :getShader
    alias_native :apply_filter, :applyFilter
    alias_native :sync_uniform, :syncUniform

  end
end
