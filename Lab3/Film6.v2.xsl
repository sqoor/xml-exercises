<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" />

    <xsl:template match="/">
        <FILMS>
            <xsl:apply-templates select="FILMS" />
        </FILMS>
    </xsl:template>

    <xsl:template match="FILMS">
        <INCOMPLETS>
            <xsl:apply-templates select="FILM[RESUME = '' or not(RESUME)]/TITRE" />
        </INCOMPLETS>
        <COMPLETS>
            <xsl:apply-templates select="FILM[RESUME != '']/TITRE" />
        </COMPLETS>
    </xsl:template>

    <xsl:template match="FILM/TITRE">
        <FILM>
            <xsl:value-of select="." />
        </FILM>
    </xsl:template>


</xsl:stylesheet>