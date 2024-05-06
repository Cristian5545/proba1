<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head> <title>Ejerciciopractica1</title> </head>
    <body>
    <ul>
        <xsl:for-each select="ciclos/ciclo">
        <li>
            <xsl:value-of select="nombre"/>
        </li>
        </xsl:for-each>
    </ul>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>