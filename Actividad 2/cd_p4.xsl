<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Biblioteca personal de Sergio Mateos</h1>
                <table border="5">
                    <tr bgcolor="gray">
                        <th>Título del álbum</th>
                        <th>Artista</th>
                        <th>Cancion</th>
                        <th>Sello discográfico</th>
                        <th>Año de publicación</th>
                        <th>Duracion</th>
                    </tr>
                    <xsl:for-each select="cds/cd">
                        <xsl:variable name="titulo">
                            <xsl:value-of select="titulo"/>
                        </xsl:variable>
                        <xsl:variable name="artista">
                            <xsl:value-of select="artista"/>
                        </xsl:variable>
                        <xsl:variable name="cancion">
                            <xsl:value-of select="cancion"/>
                        </xsl:variable>
                        <xsl:variable name="sello">
                            <xsl:value-of select="sello"/>
                        </xsl:variable>
                        <xsl:variable name="anyo">
                            <xsl:value-of select="anyo"/>
                        </xsl:variable>
                            <xsl:for-each select="cancion">
                                <xsl:if test="@tiempo &lt; 250">
                                    <tr>
                                    <td><xsl:value-of select="$titulo"/></td>
                                    <td><xsl:value-of select="$artista"/></td>
                                    <td><xsl:value-of select="."/></td>
                                    <td><xsl:value-of select="$sello"/></td>
                                    <td><xsl:value-of select="$anyo"/></td>
                                    <td><xsl:value-of select="@tiempo"/></td>
                                    </tr>
                                </xsl:if>
                            </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>