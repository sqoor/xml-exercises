# XML Lab Exercises
Lab XML, DTD, XML Schema
DTD

# Lap 1

# List of films
We consider that:

a list of films contains films but may be empty,
* a film contains a title and at least one actor (in this order),
* an actor and a title are strings of characters
* Write an XML base containing a list of movies that complies with this data model.

Write a DTD representing this data model.

Validate your XML database against your DTD. Once it validates, make some tests, e.g. adding an unexpected element or attribute in your XML file and observe that it does not validate any more

# Curriculum Vitae
The DTD in the cv.dtd file describes a common format for CVs.

Write your CV in XML respecting this DTD (and validate it).

Visualise your XML document with Firefox

Is a CV containing the following XML tree valid?

`<cvnom>Dupont Durand</cvnom>`

# List of films (bis)
Build a DTD for films.xml and possibly other XML documents sharing the same model


# XML Namespaces
* Your previous experience with XML files were without namespace
* Write new versions with a named namespace
* Write new versionswith a default namespace


# # Lab 2

# XML Schema
Write an XML schema for your CVs and for the database of films. It must express constraints similar to those in the DTD and additional ones.

Create a copy of films/xml, remove the duplication of information about artists in the ROLE elements, create an attribute to refer to ARTISTE elements within FILM elements. Then write the schema of this new XML file, adding a key and keyref declaration.


# # Lab 3

# Getting started
Consider the XML document in cd_catalog.xml and write XSLT transformations to output each of the output HTML or XML files in the folder, except for the last one. For output5.html take co_catalog2.xml as an input.

# XML databases on films
* Write the XSLT transformation films1.xsl to produce the output1.html file from the films1.xml XML document. FIlms are sorted by date, they are in bold when the date is after 1987 and in italic before.
* Write the XSLT transformation films2.xsl to produce the output2.html file from the films1.xml XML document. The output is the list of actors of dramas, sorted alphabetically.
* Write the XSLT transformation films3.xsl to produce the output3.xml file from the films1.xml XML document.The output is an XML tree containing only the ARTISTE elements (not the FILM elements) which have been slightly transformed and those without birthdate information are skipped.
* Write the XSLT transformation films4.xsl to produce the output4.html file from the films2.xml XML document.
* Write the XSLT transformation films5.xsl to produce the output5.html file from the films2.xml XML document.
* Write the transformation films6.xsl to produce the output6.xml file from the films3.xml XML document. The names of films with a summary appear in FILM child elements of a COMPLETE element, and the names of films without a summary (empty SUMMARY element or no SUMMARY element) appear in FILM child elements of an INCOMPLETE element.

# Advanced exercises
* Write a transformation that copies an XML tree while replacing all the attributes of an element by child elements, each having for name the name of the original attribute.
* Write a transformation that copies an XML tree while conserving only the three first levels of the tree.
* Write a transformation that copies an XML tree while conserving only the three first levels of the tree, and the elements of the third level without text content or without child elements are skipped.




# # Lab 4

# JSON Lab
* Consider the example data structured in XML in films.xml (or a subset of it for let us say 5 films and their associated artists) and express it in JSON.
* Write a JSON schema for your JSON data and experience validating your data against its schema using an online validator or a validator available in your editor or programming environment.


