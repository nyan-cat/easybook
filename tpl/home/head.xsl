<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl"
    xmlns:www="https://github.com/nyan-cat/easyweb"
    exclude-result-prefixes="php www">
    <xsl:output omit-xml-declaration="yes" encoding="utf-8" />
    <xsl:template match="/">
        <www:script src="/js/jquery.min.js" />
        <www:script src="/js/jquery.validate.min.js" />
        <title><xsl:value-of select="www:local('home:title')" /></title>
        <script type="text/javascript">
            $(document).ready(function()
            {
                $("a.edit").click(function(e)
                {
                    $("#" + $(this).data("edit")).toggle("fast");
                    e.preventDefault();
                });

                $("form.form").each(function()
                {
                    $(this).validate
                    ({
                        rules :
                        {
                            author : "required",
                            message : "required"
                        },
                        messages :
                        {
                            author : "<xsl:value-of select="www:local('required')" />",
                            message : "<xsl:value-of select="www:local('required')" />"
                        }
                    });
                });
            });
        </script>
    </xsl:template>
</xsl:stylesheet>