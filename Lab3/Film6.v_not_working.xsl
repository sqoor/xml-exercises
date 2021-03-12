<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" />

    <xsl:template match="/">
        <FILMS>
            <xsl:apply-templates select="FILMS" />
        </FILMS>
    </xsl:template>

    <xsl:template match="FILMS">
        <xsl:choose>
            <xsl:when test="FILM/RESUME != ''">
                <COMPLETS>
                    <xsl:apply-templates select="FILM" />
                </COMPLETS>
            </xsl:when>
            <xsl:otherwise>
                <INCOMPLETS>
                    <xsl:value-of select="FILM" />
                </INCOMPLETS>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="FILM">
        <FILM>
            <xsl:value-of select="TITRE" />
        </FILM>
    </xsl:template>


</xsl:stylesheet>