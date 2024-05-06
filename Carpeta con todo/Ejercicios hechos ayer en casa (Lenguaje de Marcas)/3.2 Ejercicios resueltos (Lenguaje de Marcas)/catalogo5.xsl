<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Ejemplo de Transformacion</title>
    </head>
    <body>
        <h1>Resultado</h1>
        <ol>
            <xsl:for-each select="catalogo/libro">
                <li> <xsl:value-of select="title"/> </li>
            </xsl:for-each>
        </ol>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>