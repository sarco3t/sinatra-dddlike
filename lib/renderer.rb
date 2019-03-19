module Renderer
  
  class << self
    attr_accessor :classes, :renderer
  end
  self.classes = {}
  self.renderer = JSONAPI::Serializable::Renderer.new

  def self.call(a_scope)
    classes[a_scope] ||= Class.new do
      include Interactor
      define_method :scope do
        a_scope
      end

      define_method :renderer do
        Renderer.renderer
      end

      def call
        context.render = renderer.render(
          context.model,
          class: { scope.to_s.to_sym => scope.const_get(:Serializer) }
        )
      end
    end
  end
end
