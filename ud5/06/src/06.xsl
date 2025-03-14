<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
<xsl:output method="text" indent="yes"/>
<xsl:mode on-no-match="shallow-copy"/>
<xsl:template match="network" mode="#all">
    <xsl:variable name="newline" select="'&#10;'"/>
    <xsl:variable name="newtab" select="'    '"/>
    <xsl:value-of select="concat(name(current()),':')"/>
    <xsl:for-each select="ethernets">
        <xsl:value-of select="concat($newline,$newtab,name(),':')"/>
        <xsl:value-of select="concat($newline,$newtab,$newtab,name,':')"/>
        <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,name(addresses),':')"/>
        <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,$newtab,addresses)"/>
        <xsl:if test="gateway4">
            <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,'routes:')"/>
            <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,$newtab,'to: default')"/>
            <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,$newtab,'via: ',gateway4)"/>
            <!-- 
            routes:
                to: default
                via: <xsl:value-of select="gateway4"/>
             -->
        </xsl:if>
        <xsl:if test="nameservers">
            <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,name(nameservers),':')"/>
            <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,$newtab,name(addresses),':')"/>
            <xsl:for-each select="nameservers/addresses">
                <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,$newtab,$newtab,current())"/>
            </xsl:for-each>
        </xsl:if>
    </xsl:for-each>
<!-- 

 -->
<!--  
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
                <xsl:text>&#10;            </xsl:text>
            </xsl:for-each>
-->
</xsl:template>
</xsl:stylesheet>