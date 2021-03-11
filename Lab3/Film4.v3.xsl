<?xml version="1.0" encoding="ISO-8859-1"?>

<!-- This version is without for-each, only templates -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
                <p>Film4 version 3</p>
                <ul>
                    <xsl:apply-templates />
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="FILMS">
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="FILM">
        <xsl:variable name="film_notes_count">
            <xsl:value-of select="count(./NOTES/NOTE)" />
        </xsl:variable>

        <xsl:variable name="film_notes_sum">
            <xsl:value-of select="sum(./NOTES/NOTE)" />
        </xsl:variable>

        <li>
            The average note of film "
            <xsl:value-of select="TITRE" />
            " is
            <xsl:value-of select="floor($film_notes_sum div $film_notes_count)" />
        </li>
    </xsl:template>
</xsl:stylesheet>