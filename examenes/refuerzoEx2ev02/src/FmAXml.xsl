<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                expand-text="yes"
                version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/lfm">
        <topalbums>
            <xsl:attribute name="artist">
                <xsl:value-of select="topalbums/@artist"/>
            </xsl:attribute>
            <xsl:for-each select="topalbums/album">
                <xsl:sort select="playcount" data-type="number" order="ascending"/>
                <xsl:apply-templates select="."/>
            </xsl:for-each>
        </topalbums>
    </xsl:template>
    <xsl:template match="album">
        <album>
            <name>
                <xsl:value-of select="name"/>
            </name>
            <playcount>
                <xsl:value-of select="playcount"/>
            </playcount>
            <url>
                <xsl:value-of select="url"/>
            </url>
        </album>
    </xsl:template>
</xsl:stylesheet>