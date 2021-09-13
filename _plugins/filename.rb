module Jekyll
  module FileFilters
    def extname(input)
      File.extname(input)
    end
  end
end

Liquid::Template.register_filter(Jekyll::FileFilters)
