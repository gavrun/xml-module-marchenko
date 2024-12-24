<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>XSLT Test</h1>
				<xsl:value-of select="/schedule/class[1]/lesson[1]/subject" />
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
