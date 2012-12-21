<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl"
    xmlns:www="https://github.com/nyan-cat/easyweb"
    exclude-result-prefixes="php www">
    <xsl:template match="/">
        <html>
            <head>
                <www:style src="/css/style.css" />
                <www:template name="head" />
            </head>
            <body>
                <div class="container">
                    <span class="column">
                        <style>
                            a.page
                            {
                                margin-right: 1em;
                            }
                        </style>
                        <xsl:apply-templates select="www:paginate(15, 85, 10)/pages/*" />
                        <www:xslt xsl="/xsl/menu.xsl" xml="/xml/menu.xml" />
                        <www:template name="body" />
                    </span>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="previous">
        <a href="/page/{.}/" class="page">← Previous</a>
    </xsl:template>
    <xsl:template match="next">
        <a href="/page/{.}/" class="page">Next →</a>
    </xsl:template>
    <xsl:template match="page[@current]">
        <a href="/page/{.}/" class="page current"><xsl:value-of select="." /></a>
    </xsl:template>
    <xsl:template match="page">
        <a href="/page/{.}/" class="page"><xsl:value-of select="." /></a>
    </xsl:template>
</xsl:stylesheet>