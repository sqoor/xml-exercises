<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>Actors of dramas</title>
            </head>

            <body>
                <h1>
                    Here is the list of the
                    <xsl:value-of select="count(//FILM[GENRE='Drame']/ROLES/ROLE)" />
                    <!-- 
                        same result as the previous code
                        <xsl:value-of select="count(//ROLE[../../GENRE='Drame'])" />
                     -->
                    actors of the
                    <xsl:value-of select="count(//FILM[GENRE='Drame'])" />
                    dramas
                </h1>
                <blockquote>
                    <xsl:apply-templates select="FILMS/FILM/ROLES/ROLE">
                        <xsl:sort select="NOM" order="ascending"/>
                    </xsl:apply-templates>
                </blockquote>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="ROLE">
        <xsl:if test="../../GENRE = 'Drame'">
            <p>
                <strong>
                    <xsl:value-of select="NOM" />
                    ,
                    <xsl:value-of select="PRENOM" />
                </strong>
            </p>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>