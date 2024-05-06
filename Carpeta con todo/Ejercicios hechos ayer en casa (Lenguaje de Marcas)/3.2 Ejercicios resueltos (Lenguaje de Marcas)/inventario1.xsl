<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<inventario>
    <xsl:for-each select="inventario/producto">
        <xsl:if test="peso &gt; 5">
            <nombre> <xsl:value-of select="nombre"/> </nombre>
        </xsl:if>
    </xsl:for-each>
</inventario>
</xsl:template>
</xsl:stylesheet>