<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<catalogo>
    <xsl:for-each select="catalogo/libro">
        <libro>
            <title>
                <xsl:attribute name="escritor">
                    <xsl:value-of select="autor"/>
                </xsl:attribute>
                <xsl:value-of select="title"/>
            </title>
        </libro>
    </xsl:for-each>
</catalogo>
</xsl:template>
</xsl:stylesheet>