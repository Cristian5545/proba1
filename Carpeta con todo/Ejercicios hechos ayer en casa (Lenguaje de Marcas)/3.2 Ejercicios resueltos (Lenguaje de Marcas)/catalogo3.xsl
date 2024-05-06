<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Catalogo de libros</title>
    </head>
    <body>
        <h1>Listado de Libros</h1>
            <table border='1'>
                <xsl:for-each select="catalogo/libro">
                    <tr>
                        <td>
                            <xsl:value-of select="title"/>
                        </td>
                        <td>
                            <xsl:value-of select="autor"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>