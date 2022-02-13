require 'nokogiri'

class Scraper
    def initialize
    end

    def get_page
        html = File.read('fixtures/Top_Primary_Schools_in_Adelaide_2020.html')
        Nokogiri::HTML(html)
    end

    def scrape_schools
        puts get_page.css('table.table.table.table-striped.table-bordered.table-hover.dataTable.no-footer tr')
    end

    def 
end

Scraper.new.scrape_schools