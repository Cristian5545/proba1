<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>GRADO SUPERIOR</h1>
            <ul>
               <xsl:for-each select="ciclos/ciclo">
                    <xsl:if test="grado='Superior'">
                        <li>
                           <strong>
                                <xsl:value-of select="@codigo"/>
                                <xsl:value-of select="nombre"/>
                            </strong>
                        </li>
                    </xsl:if>
                </xsl:for-each>
            </ul>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>  