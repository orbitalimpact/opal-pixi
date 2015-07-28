module PIXI
  module Base

    def self.included(base)
      base.class_eval do
        name = "window.#{self.name.split('::').join('.')}"
        code = "self._proto = #{name}.prototype, def = self._proto; #{name}.prototype._klass = self"
        # %x{ alert(code) }
        %x{ eval(code) }
      end
    end

  end
end
