<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<catalogo>
    <xsl:for-each select="catalogo/libro">
        <libro>
            <titulo>
                <xsl:value-of select="title"/>
            </titulo>
            <autor>
                <xsl:value-of select="autor"/>
            </autor>
        </libro>
    </xsl:for-each>
</catalogo>
</xsl:template>
</xsl:stylesheet>