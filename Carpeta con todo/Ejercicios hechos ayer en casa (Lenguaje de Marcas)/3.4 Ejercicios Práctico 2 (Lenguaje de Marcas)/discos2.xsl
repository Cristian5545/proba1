<?xml version="1.0"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Ejemplo de Transformacion</title>
    </head>
    <body>
        <xsl:for-each select="catalogo/disco">
            <xsl:value-of select="."/>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>