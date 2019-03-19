class Location::List
  include Interactor::Organizer

  organize(
    Location::AllQuery,
    Renderer.(Location)
  )
end
