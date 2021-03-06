class Vehicle < ActiveRecord::Base
  # children, used when selecting the type of vehicle to add
  VEHICLE_TYPES = ['Truck', 'Car']

  attr_accessor :vehicle_type, :metadata

  # forms will not allow us to use 'type' as a field name, this is a simple work around
  def vehicle_type=(type)
    self[:type] = type
  end
  
  def vehicle_type
    self[:type].to_s
  end
  
  # convert the provided hash to xml before storing it
  def metadata=(data)
    # make sure were providing a hash
    data = {} unless data.is_a?(Hash)

    # convert to xml <hash>...</hash>
    self[:metadata] = data.to_xml(:dasherize => false)
  end
  
  # retrieve the xml, convert it to a hash, and return it
  def metadata
    Hash.from_xml(self[:metadata])['hash']
  end
  
  def find_with_price_under(_price)
    @vehicles = Vehicle.find_by_sql(
      "SELECT *, CAST(ExtractValue(metadata, '/hash/sticker_information/price') AS SIGNED) AS price
      FROM vehicles
      HAVING price < #{_price}")
  end
end
