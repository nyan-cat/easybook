<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl"
    xmlns:www="https://github.com/nyan-cat/easyweb"
    exclude-result-prefixes="php www">
    <xsl:output omit-xml-declaration="yes" encoding="utf-8" />
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <www:style src="/css/style.css" />
                <www:template name="head" />
            </head>
            <body>
                <div class="container">
                    <span class="column">
                        <www:xslt xsl="/xsl/menu.xsl" xml="/xml/menu.xml" />
                        <www:template name="body" />
                    </span>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>