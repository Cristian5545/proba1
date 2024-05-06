<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Bibl
        <ol>
            <xsl:for-each select="titulo/autor">
                <xsl:sort order="descending">
                    <xsl:value-of select="nombre"/>
                </xsl:sort>
            </xsl:for-each>
        </ol>
    </xsl:template>
</xsl:stylesheet>
