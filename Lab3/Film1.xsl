<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Year and titles of films in HTML</title>
            </head>
            <body>
                <h1>
                    Here is the list of the
                    <xsl:value-of select="count(//FILM)" />
                    films
                </h1>
                <blockquote>
                    <xsl:apply-templates select="FILMS/FILM">
                        <xsl:sort select="@Annee" order="descending" />
                    </xsl:apply-templates>
                </blockquote>
            </body>
        </html>
    </xsl:template>


    <xsl:template match="FILM">
        <xsl:if test="@Annee &gt; 1986">
            <p>
                <strong>
                    <xsl:value-of select="@Annee" />
                    :
                    <xsl:value-of select="TITRE" />
                </strong>
            </p>
        </xsl:if>
        <xsl:if test="@Annee &lt; 1987">
            <p>
                <em>
                    <xsl:value-of select="@Annee" />
                    :
                    <xsl:value-of select="TITRE" />
                </em>
            </p>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>