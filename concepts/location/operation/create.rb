class Location::Create
  include Interactor::Organizer
  organize ::Validation.(Location), Persist.(Location)
end

