require_relative '../lib/google_drive_connector'

class GoogleDriveWriter < GoogleDriveConnector
  def write(column_values)
    15.times {|index| sheet[START_ROW + index, COLUMN] = column_values[index] }
    sheet.save
  end
end