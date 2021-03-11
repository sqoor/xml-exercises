<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" />
    
    <xsl:template match="/">

        <ARTISTES>
            <xsl:apply-templates select="FILMS/ARTISTE">
                <xsl:sort select="ACTNOM" />
            </xsl:apply-templates>
        </ARTISTES>

    </xsl:template>

    <xsl:template match="ARTISTE">
        <ARTISTE naissance="{ANNEENAISS}">
            <ACTNOM>
                <xsl:value-of select="ACTNOM" />
            </ACTNOM>
            <ACTPNOM>
                <xsl:value-of select="ACTPNOM" />
            </ACTPNOM>
        </ARTISTE>
    </xsl:template>


</xsl:stylesheet>