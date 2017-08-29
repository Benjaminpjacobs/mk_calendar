class EventSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :length

  def start_time
    object.start_time.strftime('%H%M')
  end
  
  def end_time
    object.end_time.strftime('%H%M')
  end

  def length
    ((object.end_time - object.start_time)/1800).to_i
  end
end
