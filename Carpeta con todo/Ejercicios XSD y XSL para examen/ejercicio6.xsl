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
            <tr style="background-color:#CCFFFF">
                <th style="text-align: left">titulo</th>
                <th style="text-align: left">artista</th>
                <th style="text-align: left">pais</th>
                <th style="text-align: left">compania</th>
                <th style="text-align: left">precio</th>
                <th style="text-align: left">anio</th>
            </tr>
        <xsl:for-each select="catalogo/disco">
            <tr>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="artista"/></td>
                <td><xsl:value-of select="pais"/></td>
                <td><xsl:value-of select="compania"/></td>
                <td><xsl:value-of select="anio"/></td>
            </tr>
            <xsl:choose>
                <xsl:when test='precio>10'>
                    <td style="background-color: green">
                        <xsl:value-of select="precio"/>
                    </td>
                </xsl:when>
                <xsl:otherwise>
                    <td style="background-color: yellow">
                        <xsl:value-of select="precio"/>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each></table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>