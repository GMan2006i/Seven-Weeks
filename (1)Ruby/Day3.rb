class metaCode
    def self.the_meta_script
        define_method 'read' do
            file = file.new(self.class.to_s.downcase + ' - Day3.txt')
            @headers = file.gets.chomp.split(', ')

            file.each do |row|
                @result << row.chomp.split(', ')
            end
        end

        define_method "headers" do
            @headers
        end
        define_method "meta_contents" do
            @result
        end
        define_method "initialize" do
            @result = []
            read
        end
    end
end

class RubyMeta < metaCode
    the_meta_script
end

m = RubyMeta.new
puts m.headers.inspect
puts m.meta_contents.inspect

