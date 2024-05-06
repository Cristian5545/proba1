<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Plantilla principal -->
  <xsl:template match="/catalogo">
    <catalogo>
      <!-- Aplicar plantilla solo a los discos de Portugal -->
      <xsl:apply-templates select="disco[pais='portugal']"/>
    </catalogo>
  </xsl:template>

  <!-- Plantilla para los discos -->
  <xsl:template match="disco">
    <disco>
      <!-- Copiar todos los elementos del disco -->
      <xsl:copy-of select="*"/>
    </disco>
  </xsl:template>

</xsl:stylesheet>
