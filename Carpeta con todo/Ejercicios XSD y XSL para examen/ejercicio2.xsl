<?xml version="1.0"?>
<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Catalogo de Discos</title>
</head>
    <body><h1>Catalogo de Discos</h1>
        <table border="1">
            <xsl:for-each select="catalogo/disco">
                <tr>
                    <th>
                        <xsl:value-of select="titulo"/>
                    </th>
                    <th>
                        <xsl:value-of select="artista"/>
                    </th>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>