module Delete
  
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
        model = context.model || scope[context.id]
        if model
          model.delete
        else
          context.fail!(errors: { model: ['not found']})
        end
      end
    end
  end
end
