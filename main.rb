#!/usr/bin/env /Users/juandediosherrero/.rvm/bin/ruby-1.9.3-p448@google_drive

require 'google_drive'

require './settings/credentials'
require './settings/constants'



# Logs in.
# You can also use OAuth. See document of
# GoogleDrive.login_with_oauth for details.
session = GoogleDrive.login(DRIVE_USERNAME, DRIVE_PASSWORD)

# First worksheet of
# https://docs.google.com/spreadsheet/ccc?key=pz7XtlQC-PYx-jrVMJErTcg
ws = session.spreadsheet_by_key(SPREADSHEET_KEY).worksheets[0]

COLUMN = 7
START_ROW = 27

10.times do
  15.times do |index|
    ws[START_ROW + index, COLUMN] = ['1', 'X', '2'].sample
  end
ws.save
end

