module Validation
  
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
        schema = scope.const_get :Schema
        validation = schema.(context.params)
        if validation.success?
          context.model = context.model ? context.model.set(validation.output) : scope.new(validation.output)
        else
          context.fail!(errors: validation.errors)
        end
      end
    end
  end
end

