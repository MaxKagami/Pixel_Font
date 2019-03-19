module Jekyll
    class Charfont < Liquid::Tag
        def initialize(tag_name, text, tokens)
            super
            html = "<span class=\"charfont-tinier\">"
            text.upcase.split("").each do |i|
                if i == " "
                    classname="SP"
                elsif i == "."
                    classname="dot"
                else
                    classname=i
                end
                html = html + "<span class=\"charfont"+classname+"\" >" + i + "</span>"
            end
            html = html + "</span>"
            @output=html
        end
        def render(context)
            @output
        end
    end
end
Liquid::Template.register_tag('charfont', Jekyll::Charfont)
