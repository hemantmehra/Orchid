module LinksHelper
  def fetch_links(page_no=0)
    links = []
    start = 10 * page_no
    links_id = $redis.zrange 'link', start, start + 9
    if !links_id.nil?
      links_id.each do |i|
        links.append(Link.find_by_id(i.to_i))
      end
    end
    links
  end
end
