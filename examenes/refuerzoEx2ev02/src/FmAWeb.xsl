<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:include href="../../../ud5/lib/libhtml.xsl"/>
    <xsl:template match="/lfm/topalbums" mode="#all">
    <html>
        <head>
            <!-- Se llama a la plantilla que creamos en lib llamada meta -->
            <xsl:call-template name="meta">
                <!-- Si no se ponen comillas simples en el select, el texto da error -->
                <xsl:with-param name="titulo" select="'Sabina : Gonzalo Junquera Lorenzo'"/>
            </xsl:call-template>>
        </head>
        <body>
            <header>
                <h1>last.fm</h1>
                <h2>
                    <xsl:value-of select="@artist"/>
                </h2>
            </header>
            <main>
                <h3>Álbumes</h3>
                <div id="caja_principal">
                    <xsl:for-each select="album">
                        <div class="caja_album">
                        <!-- 
                        <img src="{image[@size='large']/text()}" alt="{name/text()}"/>
                         -->
                            <img src="" alt="{name/text()}"/>
                            <div class="textos">
                                <p><a href="{url/text()}"><xsl:value-of select="artist/name/text()"/></a></p>
                                <xsl:for-each select="artist">
                                    <p><xsl:value-of select="name/text()"/></p>
                                </xsl:for-each>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </main>
        </body>
    </html>
    </xsl:template>

    

</xsl:stylesheet>