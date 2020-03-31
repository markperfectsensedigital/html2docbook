import lxml.etree

xml_file = lxml.etree.parse("docbook.xml")
xml_validator = lxml.etree.XMLSchema(file="docbook.xsd")

is_valid = xml_validator.validate(xml_file)

print(is_valid)