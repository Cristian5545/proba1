<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head><title>Resultados</title></head>
    <body>
        <xsl:for-each select="inventario/producto">
            <xsl:if test="lugar/@edificio='A'">
                <xsl:if test="peso/@unidad='g'">
                    <xsl:if test="peso &lt; 7000">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                        </tr>
                    </xsl:if>
                </xsl:if>
                <xsl:if test="peso/@unidad='kg'">
                    <xsl:if test="peso &lt; 7">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                        </tr>
                    </xsl:if>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>