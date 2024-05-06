<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head><title>Ejemplo de transformación</title></head>
    <body>
        <h1>Resultado</h1>
        <ol>
            <xsl:for-each select="catalogo/libro">
                <xsl:if test="fechaedicion &gt; 2000">
                    <li>
                        <xsl:value-of select="title"/>
                        <ol>
                            <xsl:for-each select="autores/autor">
                                <xsl:sort order="descending"/>
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ol>
                    </li>
                </xsl:if>
            </xsl:for-each> <!--Fin del recorrido del libro-->
        </ol>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>