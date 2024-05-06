<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Ejemplo de transformación</title>
</head>
    <body>
        <xsl:for-each select="catalogo/disco">
            <xsl:value-of select="sum(disco/precio)"/>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>