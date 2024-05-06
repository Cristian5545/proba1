<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" mlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head> <title>Tabla de inventario</title> </head>
        <body>
            <table border='1'>
                <xsl:for-each select="inventario/producto">
                    <tr>
                        <td> <xsl:value-of select="nombre"/> </td>
                        <td>
                            <xsl:if test="peso/@unidad= 'kg'">
                                <xsl:value-of select="peso * 1000"/>
                            </xsl:if>
                            <xsl:if test="peso/@unidad= 'g'">
                                <xsl:value-of select="peso"/>
                            </xsl:if>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
</html>
</xsl:template>
</xsl:stylesheet>  