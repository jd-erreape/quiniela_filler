class GoogleDriveConnector

  COLUMN = 7
  #START_ROW = 6   # Current week
  START_ROW = 27 # Next week
  FIRST_COLUMN = 4
  COLUMNS = 12


  protected

  def sheet
    @sheet ||= session.spreadsheet_by_key(SPREADSHEET_KEY).worksheets[0]
  end

  def session
    @session ||= GoogleDrive.login(DRIVE_USERNAME, DRIVE_PASSWORD)
  end

end