class DomainValidator < ActiveModel::EachValidator
  def validate_each (record, attribute, value)
    unless value =~  /^(?!:\/\/)([a-zA-Z0-9-]+\.){0,5}[a-zA-Z0-9-][a-zA-Z0-9-]+\.[a-zA-Z]{2,64}?$/i
      record.errors[attribute] << (options[:message] || 'is not true')
    end
  end
end
