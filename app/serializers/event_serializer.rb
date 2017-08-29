class EventSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time

  def start_time
    object.start_time.strftime('%H%M')
  end
  
  def end_time
    object.end_time.strftime('%H%M')
  end
end
