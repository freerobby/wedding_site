require 'active_support/core_ext/integer/inflections'
require 'open-uri'

BRIDE_FIRST_NAME = 'Kristin'
BRIDE_LAST_NAME = 'Coyle'
GROOM_FIRST_NAME = 'Robby'
GROOM_LAST_NAME = 'Grossman'

WEDDING_DATE = Time.new(2014, 2, 8, 18, 0)
WEDDING_VENUE = 'Longfellow\'s Wayside Inn'
WEDDING_CITY = 'Sudbury'
WEDDING_STATE = 'Massachusetts'
WEDDING_ADDRESS = '72 Wayside Inn Rd, Sudbury, MA'

# These get automatically generated based on what's specified above.
WEDDING_DATE_PRETTY = WEDDING_DATE.strftime('%A, %B %e, %Y')
WEDDING_DATE_LONGFORM = WEDDING_DATE.strftime("%A, the #{WEDDING_DATE.day.ordinalize} of %B, %Y")
WEDDING_TIME_PRETTY = WEDDING_DATE.strftime('%l%P')

GOOGLE_ANALYTICS_ID = 'UA-44008076-1'
