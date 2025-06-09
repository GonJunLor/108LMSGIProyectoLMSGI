<?xml version="1.0" encoding="UTF-8"?>
<!--
     Document   : signos.xsl
     Update on : 09/06/2025
     Author     : 
     Description:
     Mostrar horoscopo / los signos del zodiaco
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
     <xsl:template match="/zodiaco">
          <html>
               <head>
                    <link href="webroot/css/estilos.css" type="text/css" rel="stylesheet"/>
                    <script src="webroot/js/script.js"/>
                    <title>Ex04 - Gonzalo Junquera Lorenzo</title>
                    <meta charset="UTF-8"/>
                    <link rel="stylesheet" href="css/estilos.css"/>
                    <script src="webroot/js/script.js" defer="defer"></script>
                    <style>
                         <xsl:for-each select="signo">
                              #signo<xsl:value-of select="@id"/>{
                                   background-image: url(webroot/images/bg-<xsl:value-of select="@id"/>.jpg);
                                   background-repeat: no-repeat;
                                   background-size: cover;
                              }
                         </xsl:for-each>
                    </style>
               </head>
               <body>
                    <header>
                         <h1>HOROSCOPO/SIGNOS ZODIACO</h1>
                    </header>
                    <main>
                         <!-- <xsl:apply-templates select="ticket"/> -->
                         <ul id="contenido">
                              <!-- Código generado por javascript -->
                              <xsl:for-each select="signo">
                                   <div class="caja">
                                        <div id="{concat('signo',@id)}" class="cajaSigno" onclick="{concat('mostrarDescripcion(',@id,')')}">
                                             <img src="{concat('webroot/images/',@id,'.svg')}" alt="{concat('webroot/images/',nombre,'.svg')}"/>
                                             <p><strong><xsl:value-of select="nombre"/></strong></p>
                                             <div class="fechas"><xsl:value-of select="fechaInicio"/>-<xsl:value-of select="fechaFin"/></div> 
                                        </div>
                                        <div class="cajaDescripcion" id="{concat('cajaDescripcion',@id)}">
                                             <p id="{concat('descripcion',@id)}"></p>
                                        </div>
                                   </div>
                              </xsl:for-each>
                         </ul>
                    </main>
                    <footer>
                         <div>
                              Todos los derechos reservados. Creado por: 
                              <a href="../../../index.html">
                                   <address style="display: inline;">Gonzalo Junquera Lorenzo</address>
                              </a>
                         </div>
                    </footer>
               </body>
               
          </html>
     </xsl:template>
    
</xsl:stylesheet>
