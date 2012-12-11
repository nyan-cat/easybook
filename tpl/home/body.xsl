<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl"
    xmlns:www="https://github.com/nyan-cat/easyweb"
    exclude-result-prefixes="php www">
    <xsl:output omit-xml-declaration="yes" encoding="utf-8" />
    <xsl:template match="/">
        <h1><xsl:value-of select="www:local('home:title')" /></h1>
        <form class="form" method="post" action="/post/" accept-charset="utf-8">
            <p>
                <input name="author" type="text" class="text" placeholder="{www:local('author')}" />
            </p>
            <p>
                <textarea name="message" rows="4" placeholder="{www:local('message')}"><![CDATA[]]></textarea>
            </p>
            <p>
                <input type="submit" value="{www:local('submit')}" class="submit" />
            </p>
        </form>
        <www:xslt xsl="/xsl/list.xsl" xml="message:list()" />
    </xsl:template>
</xsl:stylesheet>