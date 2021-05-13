from html2excel import ExcelParser

input_file = 'C:/Users/Sviluppo-pc/temp.htm'
output_file = 'C:/Users/Sviluppo-pc/temp_export.xlsx'

parser = ExcelParser(input_file)
parser.to_excel(output_file)
