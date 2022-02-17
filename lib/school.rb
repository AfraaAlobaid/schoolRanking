class School

    attr_accessor :name, :overall_score, :total_enrolment, :locality, :sector

    @@all = []

    def initialize(name=nil, overall_score=nil, total_enrolment=nil, locality=nil, sector=nil)
        @name = name
        @overall_score = overall_score
        @total_enrolment = total_enrolment
        @locality = locality
        @sector = sector
        @@all << self
    end

    def self.new_from_page(r)
        attr_array = []
        r.css('td').each {|td| attr_array << td}

        self.new(
            attr_array[1].css('a').text,
            attr_array[2].css('a').text,
            attr_array[6].text,
            attr_array[8].css('a').text,
            attr_array[9].text
        )
    end

    def self.all
        @@all
    end
end