# encoding: UTF-8

# Copyright 2012 Twitter, Inc
# http://www.apache.org/licenses/LICENSE-2.0

module TwitterCldr
  module Resources
    module Properties

      class IndicSyllabicCategoryPropertyImporter < PropertyImporter
        DATA_URL = 'ucd/IndicSyllabicCategory.txt'
        PROPERTY_NAME = 'Indic_Syllabic_Category'

        def initialize(input_path, database)
          super(
            input_path: input_path,
            property_name: PROPERTY_NAME,
            data_url: DATA_URL,
            data_path: File.basename(DATA_URL),
            database: database
          )
        end
      end

    end
  end
end