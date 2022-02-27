require 'nokogiri'
require_relative './school.rb'

class Scraper

    def self.get_page
        html = File.read('fixtures/Top_Primary_Schools_in_Adelaide_2020.html')
        Nokogiri::HTML(html)
    end

    def self.scrape_schools
        get_page.css('table.table.table.table-striped.table-bordered.table-hover.dataTable.no-footer tr')
    end

    def self.make_schools
        scrape_schools.each_with_index do |r, index|
            School.new_from_page(r) if(index > 0)
        end
    end
end

Scraper.make_schools
School.all.each {|school| puts school.sector}