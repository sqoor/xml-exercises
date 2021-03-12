<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <ul>
                    <xsl:apply-templates />
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="FILMS">
        <xsl:apply-templates select="FILM" />
        <xsl:call-template name="all_notes" />
    </xsl:template>

    <xsl:template match="FILM">
        <xsl:variable name="film_name" select="TITRE" />
        Min note of
        <xsl:value-of select="$film_name" />
        :
        <xsl:apply-templates select="NOTES">
            <xsl:with-param name="pos">1</xsl:with-param>
        </xsl:apply-templates>

        <br />
        Max note of
        <xsl:value-of select="TITRE" />
        :
        <xsl:apply-templates select="NOTES">
            <xsl:with-param name="pos">
                <xsl:value-of select="count(//NOTE[../../TITRE=$film_name])" />
            </xsl:with-param>
        </xsl:apply-templates>
        <br />
    </xsl:template>

    <xsl:template match="NOTES" >
        <xsl:param name="pos" />
        <xsl:for-each select="NOTE">
            <xsl:sort select="." data-type="number" order="ascending" />
            <xsl:if test="position()=$pos">
                <xsl:copy-of select="." />
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="all_notes">
		<br />
        <xsl:variable name="notes_count" select="count(//NOTE)" />

		<br />
		Min note: 
		<xsl:call-template name="all_notes2">
			<xsl:with-param name="pos">
				1
			</xsl:with-param>
		</xsl:call-template>

		<br />
		Max note:
		<xsl:call-template name="all_notes2">
			<xsl:with-param name="pos">
				<xsl:value-of select="$notes_count"/>
			</xsl:with-param>
		</xsl:call-template>
    </xsl:template>

	<xsl:template name="all_notes2">
		<xsl:param name="pos" />
		<xsl:for-each select="FILM/NOTES/NOTE">
			<xsl:sort select="." data-type="number" order="ascending" />
			<xsl:if test="position()=$pos">
				<xsl:copy-of select="." />
				for the film
				<xsl:value-of select="../../TITRE"/>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>