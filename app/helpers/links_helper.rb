module LinksHelper
  def fetch_links
    links = []
    links_id = $redis.zrange 'link', 0, 9
    if !links_id.nil?
      links_id.each do |i|
        links.append(Link.find_by_id(i.to_i))
      end
    end
    links
  end
end
