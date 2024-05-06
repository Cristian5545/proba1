<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Biblioteca</title>
        </head>
        <body>
        <ol>
            <xsl:for-each select="libro/titulo/autor">
                <li>
                <xsl:sort order="descending">
                    <xsl:value-of select="."/>
                </xsl:sort>
                </li>
        </ol>
        <ol>
                <xsl:if test="precio &lt; 100">
                    <li>
                        <xsl:value-of select="titulo"/>
                    </li>
                </xsl:if>
            </xsl:for-each>
        </ol>
        <h1>Encabezado</h1>
            <table>
                <xsl:for-each select="libro/titulo/autor">
                <tr>
                    <td>Título del libro</td>
                    <td>Autores del libro</td>
                    <td>Editores del libro</td>
                </tr>
                <tr>
                    <xsl:if test="precio &gt; 100">
                            <xsl:sort order="descending">
                                <xsl:choose>
                                    <xsl:when>Caro:</xsl:when>
                                </xsl:choose>
                            </xsl:sort>
                            <xsl:value-of select="."/>
                    <xsl:if>
                </tr>
                <tr>
                    <xsl:value-of select="nombre"/>
                        <xsl:value-of select="apellido"/>
                            <xsl:choose>
                                <xsl:when="autor>'1'">
                                    <xsl:value-of select="."/>
                                </xsl:when>
                            </xsl:choose>
                            <xsl:otherwise>
                                <xsl:when="autor">
                                    <xsl:value-of select=""/>
                                </xsl:when>
                            </xsl:otherwise>
                    </xsl:for-each>
                </tr>
                <tr>
                    <xsl:for-each select="libro/titulo/editor">
                            <xsl:value-of select="nombre"/>
                            <xsl:value-of select="apellido"/>
                            <xsl:value-of select="afiliación"/>
                                <xsl:choose>
                                    <xsl:when="editor>'1'">
                                        <xsl:value-of select="."/>
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:otherwise>
                                    <xsl:when="editor">
                                        <xsl:value-of select=""/>
                                    </xsl:when>
                                </xsl:otherwise>
                    </xsl:for-each>
                </tr>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
