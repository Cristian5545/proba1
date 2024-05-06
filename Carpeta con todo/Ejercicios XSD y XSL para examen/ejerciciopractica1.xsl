<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head> <title>Ejerciciopractica1</title> </head>
    <body>
        <xsl:for-each select="ciclos/ciclo">
        <p>
        <strong>
            <xsl:value-of select="nombre"/>
        </strong>
        </p>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>