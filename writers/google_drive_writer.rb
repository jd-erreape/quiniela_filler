class GoogleDriveWriter
  attr_reader :sheet

  COLUMN = 7
  #START_ROW = 6   # Current week
  START_ROW = 27  # Next week

  def write(column_values)
    15.times {|index| sheet[START_ROW + index, COLUMN] = column_values[index] }
    sheet.save
  end

  private

  def sheet
    @sheet ||= session.spreadsheet_by_key(SPREADSHEET_KEY).worksheets[0]
  end

  def session
    @session ||= GoogleDrive.login(DRIVE_USERNAME, DRIVE_PASSWORD)
  end
end