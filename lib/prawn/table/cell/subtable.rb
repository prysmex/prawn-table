# encoding: utf-8

# subtable.rb: Yo dawg.
#
# Copyright January 2010, Brad Ediger. All Rights Reserved.
#
# This is free software. Please see the LICENSE and COPYING files for details.
module Prawn
  class Table
    class Cell

      # A Cell that contains another table.
      #
      # @private
      class Subtable < Cell

        attr_reader :subtable

        def initialize(pdf, point, options={})
          options[:padding] ||= [0, 0, 0, 0]

          super
        end

        # Sets the text color of the entire subtable.
        #
        def text_color=(color)
          @content.cells.text_color = color
        end

        # Proxied to subtable.
        #
        def natural_content_width
          @content.cells.width
        end

        # Proxied to subtable.
        #
        def min_width
          @content.cells.min_width
        end

        # Proxied to subtable.
        #
        def max_width
          @content.cells.max_width
        end

        # Proxied to subtable.
        #
        def natural_content_height
          @content.cells.height
        end

        # Draws the subtable.
        #
        def draw_content
          @content.draw
        end

      end
    end
  end
end
