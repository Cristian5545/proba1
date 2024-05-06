<?xml version="1.0"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Ejemplo de Transformacion</title>
    </head>
    <body>
        <table style="border: 1px solid black">
            <tr style="background-color:#CCFFFF">
                <th style="text-align: left">Titulo</th>
                <th style="text-align: left">Artista</th>
                <th style="text-align: left">Pais</th>
                <th style="text-align: left">Compania</th>
                <th style="text-align: left">Precio</th>
                <th style="text-align: left">Anio</th>
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
                        <td style="background-color:#ffff66">
                            <xsl:value-of select="precio"/>
                        </td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td style="background-color:#9999">
                            <xsl:value-of select="precio"/>
                        </td>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>