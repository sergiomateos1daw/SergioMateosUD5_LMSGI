<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Biblioteca personal de Sergio Mateos</h1>
                <table border="5">
                    <tr bgcolor="grey">
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Cancion</th>
                        <th>Sello</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="cds/cd">
                        <tr>
                            <td>
                                <xsl:value-of select="titulo"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="artista"/>
                            </td>
                            <td>
                                <xsl:for-each select="cancion">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>

                            <td >
                                <xsl:value-of select="sello"></xsl:value-of>
                            </td>

                            <td >
                                <xsl:value-of select="anyo"></xsl:value-of>
                            </td>
                        </tr>
                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>