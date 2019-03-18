class Location::Update
  include Interactor::Organizer
  organize Find.(Location), Validation.(Location), Persist.(Location)
end

