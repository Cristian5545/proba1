<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Ejemplo de Transformacion</title>
    </head>
    <body>
        <h1>Resultado</h1>
            <xsl:for-each select="catalogo/libro">
                <p> <xsl:value-of select="title"/> </p>
            </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>