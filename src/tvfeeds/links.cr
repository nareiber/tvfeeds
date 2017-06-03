class Links

  def self.get_links(url)
    response = HTTP::Client.get url
    feed = XML.parse(response.body)


    items = feed.xpath("//rss/channel/item").as(XML::NodeSet)
    items.each do |rls|
      title = rls.xpath_node("title").as(XML::Node).text.as(String)
      puts "#########{title}########\n"
      link = rls.xpath_node("link").as(XML::Node).text.as(String)
      puts link
      puts "\n"
    end
  end

end
