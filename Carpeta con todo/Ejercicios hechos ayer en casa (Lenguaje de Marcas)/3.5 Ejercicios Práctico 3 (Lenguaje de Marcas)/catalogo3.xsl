<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Resultado</title>
    </head>
    <body>
        <table border='1'>
            <tr>
                <td>Nombre</td>
                <td>Ano de nacimiento</td>
            </tr>
            <xsl:for-each select="catalogo/libro/autores/autor">
                <xsl:if test="@nacimiento &gt; 1700">
                    <td>
                        <xsl:value-of select="."/>
                    </td>
                    <td>
                        <xsl:value-of select="@nacimiento"/>
                    </td>
                </xsl:if>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>