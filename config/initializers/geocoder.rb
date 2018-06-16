Geocoder.configure(

  # street address geocoding service (default :google)
  :lookup => :google,
# to use an API key:
  :api_key => "AIzaSyAmwKHDMyseU5-wBzY-cJs9Q3q7YN8I2bA",

  # geocoding service request timeout, in seconds (default 3):
  :timeout => 5,

  # set default units to kilometers:
  :units => :km,

  # caching (see [below](#caching) for details):
)
