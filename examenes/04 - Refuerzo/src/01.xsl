<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:mode on-no-match="shallow-copy"/>
  <xsl:template match="software-libre">
    <html>
      <head> 
        <meta charset="utf-8"/>
        <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
        <title>Distribución de software <xsl:value-of select="@tipo"/></title>
      </head>
      <body>
        <header>
          <img src="./images/logo.jpg" alt="logo linux"/>
          <h1>Distribución de software <xsl:value-of select="@tipo"/></h1>
        </header>
        <main>
          <div class="cajaPrincipal">
            <h2>Lanzamiento de distribuciones</h2>
            <div>
            <xsl:for-each select="lanzamientos/lanzamiento">
              <figure>
                <!-- Imagen y enlace de la distribución -->
                <img src="./images/{@distribucion}.png" alt="{@distribucion}"/>
                <figcaption>
                  <a href="{/software-libre/distribuciones/distribucion[@id=current()/@distribucion]/web}">
                    <xsl:value-of select="/software-libre/distribuciones/distribucion[@id=current()/@distribucion]/web"/>
                  </a>
                </figcaption>
              </figure>
                  <figure>
                    <!-- Escritorio y enlace -->
                  <xsl:if test="@escritorio!=''">
                    <img src="./images/{@escritorio}.png" alt="{@escritorio}"/>
                    <figcaption>
                      <a href="{/software-libre/escritorios/escritorio[@id=current()/@escritorio]/web}">
                        <xsl:value-of select="/software-libre/escritorios/escritorio[@id=current()/@escritorio]/web"/>
                      </a>
                    </figcaption>
                  </xsl:if>
                  </figure>
              <figure>
                <!-- Versión, año y kernel -->
                  <p><strong>Versión:</strong> <xsl:value-of select="@version"/></p>
                  <p><strong>Año:</strong> <xsl:value-of select="@año"/></p>
                  <p><strong>Kernel:</strong> <xsl:value-of select="@kernel"/></p>
              </figure>
            </xsl:for-each>
            </div>
          </div>
        </main> 
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>