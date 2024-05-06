<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Filtrado con XSLT</title>
    </head>
    <body>
        <h1>Filtrado con XSLT</h1>
        <ol>
            <xsl:for-each select="catalogo/libro">
                <xsl:if test="@fechaedicion &gt; 2000">
                    <li> <xsl:value-of select="titulo"/> </li>
                    <ol>
                        <xsl:for-each select="autores/autor">
                            <li>
                                <!--El elemento actual es.-->
                                <xsl:value-of select="."/>
                            </li>
                        </xsl:for-each>
                    </ol>
                </xsl:if>
            </xsl:for-each>
        </ol>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>