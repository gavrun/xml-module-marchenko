<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
			<title>Resumes</title>
            </head>
            <body>
                <h1>Resume</h1>
                <!-- кандидатов, чей возраст меньше 32 лет -->
                <h2>Candidates under 45 years old:</h2>
                <xsl:for-each select="/resume/candidate[Age &lt; 45]">
                    <div>
                        <p>
                            <strong>Name:</strong> <xsl:value-of select="Name" /> 
                            <xsl:value-of select="LastName" />
                        </p>
                        <p><strong>Age:</strong> <xsl:value-of select="Age" /></p>
                        <p><strong>Workplace:</strong> <xsl:value-of select="WorkPlace" /></p>
                        <p><strong>Post:</strong> <xsl:value-of select="Post" /></p>
                    </div>
                    <hr />
                </xsl:for-each>
                
                <!-- кандидатов, чей возраст больше или равен 33 годам -->
                <h2>Candidates 45 years old and above:</h2>
                <xsl:for-each select="/resume/candidate[Age &gt;= 45]">
                    <div>
                        <p>
                            <strong>Name:</strong> <xsl:value-of select="Name" /> 
                            <xsl:value-of select="LastName" />
                        </p>
                        <p><strong>Age:</strong> <xsl:value-of select="Age" /></p>
                        <p><strong>Workplace:</strong> <xsl:value-of select="WorkPlace" /></p>
                        <p><strong>Post:</strong> <xsl:value-of select="Post" /></p>
                    </div>
                    <hr />
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
