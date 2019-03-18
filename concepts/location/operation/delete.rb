class Location::Delete
  include Interactor::Organizer
  organize ::Delete.(Location)
end

