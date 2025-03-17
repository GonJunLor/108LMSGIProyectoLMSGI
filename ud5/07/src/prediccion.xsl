<?xml version="1.0" encoding="UTF-8"?>
<!--
     Autor: Gonzalo Junquera Lorenzo
     Fecha de creación: 26 de febrero de 2025
     Fecha de modificación: 26 de febrero de 2025
     Descripción: Predicción del tiempo
-->
 
<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
             xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 
         name="package-uri"
        package-version="1.0"
        exclude-result-prefixes="#all"
        expand-text="yes"
        version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:output method="xml" indent="yes"/>
    <xsl:include href="../../lib/libhtml.xsl"/>
   
    <xsl:template match="/prediccion"  mode="#all">
        <html>
            <head>
                <!-- Se llama a la plantilla que creamos en lib llamada meta -->
                <xsl:call-template name="meta">
                <!-- Si no se ponen comillas simples en el select, el texto da error -->
                <xsl:with-param name="titulo" select="'07 XSLT Gonzalo Junquera Lorenzo'"/>
                </xsl:call-template>
            </head>
            <body>
                <h1>Predicción por municipio</h1>
                <table>
                    <caption>EL TIEMPO. <xsl:value-of select="upper-case(concat(municipio/nombre, '(',municipio/provincia,')'))"/></caption>
                        <xsl:call-template name="encTabla"/>
                        <xsl:apply-templates select="dia"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="encTabla">
        <tr>
            <th>Día</th>
            <th>Prob. precip.</th>
            <th>Estado del cielo</th>
            <th>Temperatura (ºC)</th>
            <th>Viento (km/h)</th>
        </tr>
    </xsl:template>
    <xsl:template match="dia">
        <tr>
            <td><xsl:value-of select="substring(@fecha,9,2)"/></td>
            <td><xsl:value-of select="concat(prob_precipitacion,'%')"/></td>
            <td><img src="{concat('images/',estado_cielo,'.gif')}" alt="{estado_cielo/@descripcion}"/></td>
            <td>
                <span class="tmin"><xsl:value-of select="temperatura/minima"/></span>
                <xsl:text>/</xsl:text>
                <span class="tmax"><xsl:value-of select="temperatura/maxima"/></span>
            </td>
            <td>
                <img src="{concat('images/',viento/direccion,'.gif')}" alt="{viento/direccion}"/>
                <xsl:value-of select="concat(' ',viento/velocidad)"/>
            </td>
        </tr>
    </xsl:template>
</xsl:package>