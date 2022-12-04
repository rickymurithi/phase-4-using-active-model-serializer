class MovieSummarySerializer < ActiveModel::Serializer
  attributes :id, :summary

  #Explicitly Specifying a Serializer
  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end
end
