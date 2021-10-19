module PagesHelper
    def table_color(color)
        if color.nil?
          ''
        elsif color == 'red'
          'table-danger'
        elsif color == 'blue'
          'table-primary'
        elsif color == 'yellow'
          'table-warning'
        elsif color == 'lightblue'
          'table-info'
        elsif color == 'grey'
          'table-secondary'
        elsif color == 'green'
          'table-success'
        else
          ''
        end
    end
end
