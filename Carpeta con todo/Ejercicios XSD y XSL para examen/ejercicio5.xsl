<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Ejemplo de transformación</title>
</head>
    <body>
        <table style ="border: 1px solid black">
            <xsl:for-each select="catalogo/disco">
                <xsl:if test="anio &gt; 1990">
                    <discos> <xsl:value-of select="anio"/> </discos>
                </xsl:if>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>