require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  EXPECT = "<!DOCTYPE html>\n<html>\n  <head>\n    <title>Dummy</title>\n    \n    \n\n    <link rel=\"stylesheet\" media=\"all\" href=\"/assets/application-5ac6384ca459dff358234a54a3a7c0a1e0031a928018b37af5408111e7077bb9.css\" />\n    <script src=\"/assets/application-b8cb464b8618f972712fcbeaf81120d1a30d4c19184b1b69d3354afe2af5a66d.js\"></script>\n  </head>\n\n  <body>\n    <h1>Index</h1><h2>P1</h2><h2>P2</h2><h2>ERB in index.html.erb</h2>\n<script>\n  console.log(\"hello world\");\n</script>\n  </body>\n</html>\n"

  test "should get index" do
    get root_url
    assert_equal response.body, EXPECT
    assert_response :success
  end

end
