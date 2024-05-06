<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ciclos</title>
            </head>
            <body>
                <h1>IES Francisco de los Rios</h1>
                    <table border='1'>
                        <xsl:for-each select="ciclos/ciclo">
                            <xsl:if test="decretoTitulo &gt; 2008">
                                <tr>
                                    <td>Nombre</xsl:value-of select="nombre"/>
                                    <td>Año<xsl:value-of select="decretoTitulo"/>
                                </tr>
                            </xsl:if>
                            <ol>
                                <li>
                                    <xsl:if test="decretoTitulo &lt; 2010">
                                        <xsl:sort order="descending">
                                            <xsl:value-of select="nombre"/>
                                        </xsl:sort>
                                    </xsl:if>
                                </li>
                            </ol>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
