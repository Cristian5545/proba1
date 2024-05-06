<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head> <title>Ejercicio1</title> </head>
    <body>
        <h1>Resultado</h1>
        <table style="border:1px solid black;">
            <tr>
                <td>Peso</td>
                <td>RAM</td>
                <td>Disco</td>
                <td>Precio</td>
            </tr>
            <xsl:for-each select="pedido/portatiles/portatil">
                <tr>
                    <td><xsl:value-of select="peso"/></td>
                    <td><xsl:value-of select="ram"/></td>
                    <td><xsl:value-of select="disco"/></td>
                    <td><xsl:value-of select="precio"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>