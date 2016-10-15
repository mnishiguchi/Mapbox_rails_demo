# # http://opalrb.org/
# module Maps
#   class Clickable
#
#     def initialize(selector = '.controller-maps', parent = Element)
#       @element = parent.find(selector)
#       setup
#     end
#
#     attr_reader :element
#
#     def setup
#       puts "Hi from Maps::Clickable"
#
#       @map = mapboxgl.new.Map(
#         container: 'map',
#         style:     'mapbox://styles/mapbox/streets-v9',
#         center:    [-98, 38.88],
#         minZoom:   2,
#         zoom:      4
#       )
#
#       # Disable default box zooming.
#       map.boxZoom.disable
#
#       # Create a popup, but don't add it to the map yet.
#       @popup = mapboxgl.new.Popup(
#         closeButton: false
#       )
#     end
#
#     def load_map
#       @map.on(:load) do |event|
#         canvas = @map.get_canvas_container
#         # Add the source to query. In this example we're using
#         # county polygons uploaded as vector tiles
#         @map.add_source('counties',
#             "type" => "vector",
#             "url"  => "mapbox://mapbox.82pkq93d"
#         )
#
#         @map.add_layer(
#           {
#             "id"     => "counties",
#             "type"   => "fill",
#             "source" => "counties",
#             "source-layer" => "original",
#             "paint" => {
#                 "fill-outline-color" => "rgba(0,0,0,0.1)",
#                 "fill-color"         => "rgba(0,0,0,0.1)"
#             }
#           },
#           'place-city-sm' # Place polygon under these labels.
#         )
#
#         @map.add_layer(
#           {
#             "id"     => "counties-highlighted",
#             "type"   => "fill",
#             "source" => "counties",
#             "source-layer" => "original",
#             "paint" => {
#               "fill-outline-color"  => "#da7110",
#               "fill-color"          => "#22d5d0",
#               "fill-opacity"        => 0.75
#             },
#             "filter" => ["in", "FIPS", ""]
#           },
#           'place-city-sm' # Place polygon under these labels.
#         )
#
#         canvas.on :mousedown do |event|
#           # Continue the rest of the function if the shiftkey is pressed.
#           return unless event.button == 0
#
#           # Disable default drag zooming when the shift key is held down.
#           map.drag_pan.disable
#
#           # Call functions for the following events
#           Document.on :mousemove do on_mousemove end
#           Document.on :mouseup do on_mouseup end
#           Document.on :keydown do on_keydown end
#
#           # Capture the first xy coordinates.
#           start = mouse_position(event)
#         end
#
#         def on_mousemove
#           "TODO"
#         end
#
#         def on_mouseup
#           "TODO"
#         end
#
#         def on_keydown
#           "TODO"
#         end
#
#         private
#
#           def mouse_position(event)
#             rect = canvas.get_bounding_client_rect
#             mapboxgl.new.point(
#               event.client_x - rect.left - canvas.client_left,
#               event.client_y - rect.top - canvas.client_top
#             )
#           end
#
#
#
#       end
#
#
#       # all_links.on :click do |event|
#       #   # Use prevent_default to stop default behavior (as you would do in jQuery)
#       #   # event.prevent_default
#       #
#       #   puts "Hello! (You just clicked on a link: #{event.current_target.text})"
#       # end
#     end
#
#     private
#
#
#   end
# end
