<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
<xsl:output method="xml" indent="yes"/>
<xsl:mode on-no-match="shallow-copy"/>
<xsl:template match="network" mode="#all">
network:<xsl:for-each select="ethernets">
    ethernets:
        <xsl:value-of select="name"/>:
            addresses:
                <xsl:value-of select="addresses"/>
    </xsl:for-each>
    routes:
        to: default
        via: <xsl:value-of select="ethernets/gateway4"/>
    nameservers:
        addresses:
            <xsl:for-each select="ethernets/nameservers/addresses">
                <xsl:value-of select="text()"/>
                <xsl:text>&#10;            </xsl:text><!-- Añadir tabulación -->
            </xsl:for-each>
</xsl:template>
</xsl:stylesheet>