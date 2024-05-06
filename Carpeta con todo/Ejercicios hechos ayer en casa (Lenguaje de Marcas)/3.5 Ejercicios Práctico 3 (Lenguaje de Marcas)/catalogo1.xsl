<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Resultado</title>
    </head>
    <body>
        <ol>
            <xsl:for-each select="catalogo/libro/autores/autor">
                <xsl:if test="@nacimiento > 1900">
                    <li>
                        <xsl:value-of select="../../titulo"/>
                    </li>
                </xsl:if>
            </xsl:for-each>
        </ol>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>