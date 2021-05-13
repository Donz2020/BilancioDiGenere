from html2excel import ExcelParser
import sys

Root = sys.argv[1]
SrcName = sys.argv[2]
DesName = sys.argv[3]

input_file = f'{Root}/{SrcName}'
output_file = f'{Root}/{DesName}'

parser = ExcelParser(input_file)
parser.to_excel(output_file)
