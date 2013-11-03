require_relative '../lib/google_drive_connector'
require_relative './most_repeated_filler'

class MostRepeatedGoogleDriveFiller < GoogleDriveConnector
  def fill
    MostRepeatedFiller.new(columns_from_sheet).fill
  end

  private

  def columns_from_sheet
    COLUMNS.times.map do |index|
      column(FIRST_COLUMN+index)
    end
  end

  def column(column_number)
    15.times.map do |index|
      sheet[START_ROW + index, column_number] if column_number != COLUMN
    end
  end
end