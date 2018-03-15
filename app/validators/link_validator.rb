class LinkValidator < ActiveModel::EachValidator
  def validate_each (record, attribute, value)
    unless value =~ /\b((?:[a-z][\w-]+:(?:\/{1,3}|[a-z0-9%])|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}\/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'".,<>?«»“”‘’]))/
      record.errors[attribute] << (options[:message] || 'is not a link')
    end

  end
end
