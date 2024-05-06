<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <!-- resolución del ejercicio -->
        <html>
            <head><title>Biblioteca</title></head>
        <body>
        <h1>Biblioteca con Descuentos(Filtrado)</h1>
            <xsl:for-each select="biblioteca/autores/autor">
               <h2> <xsl:value-of select="nombre"/> </h2>
                    <table border='1'>
                        <tr>
                            <td>Título</td>
                            <td>Género</td>
                            <td>Precio_Original</td>
                            <td>Dto.género</td>
                            <td>Dto.precio</td>
                        </tr>
                        <xsl:for-each select="libros/libro[genero='Fantasia' or genero='Realismo mágico' or genero='Aventuras']">
                            <tr>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="genero"/></td>
                                <td><xsl:value-of select="precio"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="genero='Fantasía'">
                                        10%
                                    </xsl:when>
                                    <xsl:when test="genero='Realismo mágico'">
                                        15%
                                    </xsl:when>
                                    <xsl:when test="genero='Aventuras'">
                                        0%
                                    </xsl:when>
                                </xsl:choose>
                            </td>
                            <td>
                                <xsl:if test="precio &gt; '15'">
                                    5%
                                </xsl:if>
                                <xsl:if test="precio &lt;= '15'">
                                    0%
                                </xsl:if>
                            </td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
