class Location::AllQuery
  include Interactor
  def call
    context.model = Location.all
  end
end

