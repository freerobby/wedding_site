require 'active_support/core_ext/integer/inflections'
require 'open-uri'

BRIDE_FIRST_NAME = 'Rachel'
BRIDE_LAST_NAME = 'Zettel'
GROOM_FIRST_NAME = 'Michael'
GROOM_LAST_NAME = 'Macasek'

WEDDING_DATE = Date.new(2014, 5, 25)
WEDDING_DATE_PRETTY = WEDDING_DATE.strftime('%B %d, %Y')
WEDDING_DATE_LONGFORM = WEDDING_DATE.strftime("the #{WEDDING_DATE.day.ordinalize} of %B, %Y")
WEDDING_VENUE = 'Castle Hill on The Crane Estate'
WEDDING_STATE = 'Massachusetts'
WEDDING_ADDRESS = 'Castle Hill, 290 Argilla Road, Ipswich, MA 01938'