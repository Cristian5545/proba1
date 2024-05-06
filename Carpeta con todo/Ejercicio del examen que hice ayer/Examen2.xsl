<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<datos>
    <cuentas>
        <xsl:for-each select="listado/cuenta"/>
    </cuentas>
    <fondos>
        <xsl:for-each select="listado/fondo"/>
    </fondos>
</datos>
</xsl:template>
<xsl:template match="cuenta">
    <cuenta dnititular="{@dnititular}">
        <creacion>
            <xsl:value-of select="creacion"/>
        </creacion>
        <titular>
            <xsl:value-of select="titular"/>
        </titular>
        <saldoactual>
            <xsl:value-of select="concat(saldoactual, ' ', moneda)"/>
        </saldoactual>
    </cuenta>
</xsl:template>
<xsl:template match="fondo">
    <fondo cuentaasociada="{@cuentaasociada}">
        <cantidaddepositada>
            <xsl:value-of select="cantidaddepositada"/>
        </cantidaddepositada>
    </fondo>
</xsl:template>
</xsl:stylesheet>