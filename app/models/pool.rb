class Pool < ActiveRecord::Base

  def self.get_pools
    doc = Nokogiri::XML(open("http://www.nycgovparks.org/bigapps/DPR_Pools_001.xml"))

    #Get all facilitites
    facilities = doc.remove_namespaces!.xpath("//facility")

    #Collect facility attributes
    facilities.collect do |facility|
          # binding.pry
      {:name => facility.css("Name").children.text, :location => facility.css("Location").children.text, :lat => facility.css("lat").children.text, :lon => facility.css("lon").children.text, :size => facility.css("Size").children.text}
    end
  end
end
