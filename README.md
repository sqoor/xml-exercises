# xml-exercises
Lab XML, DTD, XML Schema
DTD
List of films
We consider that:

a list of films contains films but may be empty,
a film contains a title and at least one actor (in this order),
an actor and a title are strings of characters
Write an XML base containing a list of movies that complies with this data model.

Write a DTD representing this data model.

Validate your XML database against your DTD. Once it validates, make some tests, e.g. adding an unexpected element or attribute in your XML file and observe that it does not validate any more

Curriculum vitae
The DTD in the cv.dtd file describes a common format for CVs.

Write your CV in XML respecting this DTD (and validate it).

Visualise your XML document with Firefox

Is a CV containing the following XML tree valid?

<cvnom>Dupont Durand</cvnom>

List of films (bis)
Build a DTD for films.xml and possibly other XML documents sharing the same model
XML Schema
Write an XML schema for your CVs and for the database of films. It must express constraints similar to those in the DTD and additional ones.

Create a copy of films/xml, remove the duplication of information about artists in the ROLE elements, create an attribute to refer to ARTISTE elements within FILM elements. Then write the schema of this new XML file, adding a key and keyref declaration.


XML namespaces
* Your previous experience with XML files were without namespace
* Write new versions with a named namespace
* Write new versionswith a default namespace