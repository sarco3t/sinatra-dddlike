module Persist
  
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
        context.model.save
      end
    end
  end
end

