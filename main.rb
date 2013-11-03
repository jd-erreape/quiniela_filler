#!/usr/bin/env /Users/juandediosherrero/.rvm/bin/ruby-1.9.3-p448@google_drive

require 'google_drive'

# Constants and credentials
require './settings/credentials'
require './settings/constants'

# Fillers
require './fillers/most_repeated_google_drive_filler'
# Writers
require './writers/google_drive_writer'

# Fill a column
result = MostRepeatedGoogleDriveFiller.new.fill

# Write the filled column
GoogleDriveWriter.new.write(result)

