<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Raquetas</title>
                <style>
                    td { padding: 10px; }
                </style>
            </head>
            <body>
                <h3>Colección de raquetas</h3>
                <table style="border: 1px solid black">
                    <tr style="background-color:#CCFFFF">
                        <th style="text-align:left">MARCA</th>
                        <th style="text-align:left">MODELO</th>
                        <th style="text-align:left">ANIO</th>
                    </tr>

                    <xsl:for-each select="tienda/raqueta">
                        <tr>
                            <td><xsl:value-of select="marca" /></td>
                            <td><xsl:value-of select="modelo" /></td>
                            <td><xsl:value-of select="anio" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
