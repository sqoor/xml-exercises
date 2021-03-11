<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <xsl:variable name="vertigo_notes_count">
            <xsl:value-of select="count(//NOTE[../../TITRE='Vertigo'])" />
        </xsl:variable>

        <xsl:variable name="vertigo_notes_sum">
            <xsl:value-of select="sum(//NOTE[../../TITRE='Vertigo'])" />
        </xsl:variable>

        <xsl:variable name="alien_notes_count">
            <xsl:value-of select="count(//NOTE[../../TITRE='Alien'])" />
        </xsl:variable>

        <xsl:variable name="alien_notes_sum">
            <xsl:value-of select="sum(//NOTE[../../TITRE='Alien'])" />
        </xsl:variable>

        <xsl:variable name="star_treck_notes_count">
            <xsl:value-of select="count(//NOTE[../../TITRE='Star Treck'])" />
        </xsl:variable>

        <xsl:variable name="star_treck_notes_sum">
            <xsl:value-of select="sum(//NOTE[../../TITRE='Star Treck'])" />
        </xsl:variable>

        <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
                <p>Film4 version 1</p>
                <ul>
                    <li>
                        The average note of film "Vertigo" is
                        <xsl:value-of select="floor($vertigo_notes_sum div $vertigo_notes_count)" />
                    </li>
                    <li>
                        The average note of film "Alien" is
                        <xsl:value-of select="floor($alien_notes_sum div $alien_notes_count)" />
                    </li>
                    <li>
                        The average note of film "Star Treck" is
                        <xsl:value-of select="floor($star_treck_notes_sum div $star_treck_notes_count)" />
                    </li>
                </ul>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>