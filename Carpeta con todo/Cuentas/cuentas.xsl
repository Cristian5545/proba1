<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
<html>
    <head>
        <title>Cuentas</title>
    </head>
    <body>
        <xsl:for-each select="datos/cuentas">
            <datos>
                <cuentas>
                    <cuenta>
                        <xsl:attribute name="dnititular">
                            <xsl:value-of select="cuenta/@dnititular"/>
                        </xsl:attribute>
                        <xsl:value-of select="."/>
                    </cuenta>
                </cuentas>
            </datos>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>       