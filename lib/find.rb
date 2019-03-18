module Find
  
  class << self
    attr_accessor :classes
  end
  self.classes = {}
  def self.call(a_scope)
    classes[a_scope] ||= Class.new do
      include Interactor
      define_method :scope do
        a_scope
      end
      def call
        model = scope[context.id]
        if model
          context.params = model.values.merge(context.params)
          context.params.delete(scope.primary_key)
          context.model = model
        else
          context.fail!(errors: { model: ['not found']})
        end
      end
    end
  end
end
