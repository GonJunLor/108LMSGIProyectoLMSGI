<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="3.0">
    <xsl:output method="text" indent="yes"/>
    <xsl:template match="network">
        <xsl:text>network:</xsl:text>
        <xsl:text>&#10;  ethernets:</xsl:text>
        <xsl:apply-templates select="ethernets/*"/>
    </xsl:template>
    <xsl:template match="ethernets/*">
        <xsl:text>&#10;    </xsl:text>
        <xsl:value-of select="name()"/>
        <xsl:text>:</xsl:text>
        <xsl:apply-templates select="addresses"/>
        <xsl:if test="name()='enp0s9'">
            <xsl:apply-templates select="gateway4 | nameservers"/>
        </xsl:if>
    </xsl:template>
    <xsl:template match="addresses">
        <xsl:text>&#10;      addresses:</xsl:text>
        <xsl:for-each select="tokenize(., ' ')">
            <xsl:text>&#10;        </xsl:text>
            <xsl:value-of select="."/>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="gateway4">
        <xsl:text>&#10;      routes:</xsl:text>
        <xsl:text>&#10;        to: default</xsl:text>
        <xsl:text>&#10;        via: </xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="nameservers">
        <xsl:text>&#10;      nameservers:</xsl:text>
        <xsl:apply-templates select="addresses"/>
    </xsl:template>
    <xsl:template match="nameservers/addresses">
        <xsl:text>&#10;        </xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>
