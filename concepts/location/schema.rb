Location::Schema = Dry::Validation.Schema do
  required(:name).filled(:str?)
  required(:value).filled(:str?)
end
