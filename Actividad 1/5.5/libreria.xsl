<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <xsl:apply-templates/>
    </body>
</html>
</xsl:template>
<xsl:template match="libreria">
    <h2>Biblioteca personal de Sergio Mateos</h2>
    <table>
        <tr bgcolor="#887788">
            <th>ISBN</th><th>Título</th><th>Autor</th><th>Precio</th><th>Número de Páginas</th>
        </tr>
        <xsl:apply-templates select="libros"/>
    </table>
</xsl:template>
<xsl:template match="libros">
    <tr>
        <td>
            <xsl:apply-templates select="codLibro"/></td>
            <xsl:apply-templates select="titulo"/>
            <xsl:apply-templates select="autor"/>
            <td><xsl:value-of select="precio"/> </td>
        <xsl:choose>
            <xsl:when test="numPaginas &gt; 150">
                <xsl:apply-templates select="numPaginas"/>
            </xsl:when>
            <xsl:otherwise>
                <td>
                    <xsl:value-of select="numPaginas"/>
                </td>
            </xsl:otherwise>
        </xsl:choose>
    </tr>
</xsl:template>
<xsl:template match="titulo">
    <td bgcolor="#DDEEDD"><xsl:value-of select="."/></td>
</xsl:template>
<xsl:template match="autor">
    <td bgcolor="#AABBAA"><xsl:value-of select="."/></td>
</xsl:template>
<xsl:template match="numPaginas">
    <td bgcolor="#FF0000">
        <xsl:value-of select="."/>
    </td>
</xsl:template>

</xsl:stylesheet>