class ActiveHashMain < ActiveHash::Base
  def self.array
    arrays = []
    self.data.each do |d|
      arrays.push d[:id]
    end
    return arrays
  end
end
