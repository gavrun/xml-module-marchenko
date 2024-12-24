<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <!-- шаблон для корневого элемента -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Lessons</title>
            </head>
            <body>
                <h1>Lessons</h1>
				
				<!-- таблица -->
                <table border="1">
                    <tr>
                        <th>Subject</th>
                        <th>Teacher</th>
                        <th>Day</th>
                        <th>Start Time</th>
                        <th>End Time</th>
                    </tr>
                    <!-- перебор всех занятий -->
                    <xsl:for-each select="/schedule/class/lesson">
                        <tr>
                            <td><xsl:value-of select="subject"/></td>
                            <td><xsl:value-of select="teacher"/></td>
                            <td><xsl:value-of select="day"/></td>
                            <td><xsl:value-of select="starttime"/></td>
                            <td><xsl:value-of select="endtime"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
				
				<!-- второе занятие из описанных в документе lesson.xml -->
				<h2>Second Lesson:</h2>
				<p>Second class:
				<xsl:value-of select="/schedule/class/lesson[2]/subject" />				
				</p>
				
				<!-- предпоследнее занятие из описанных в документе lesson.xml -->
				<p>Class before last:
				<xsl:value-of select="/schedule/class/lesson[last()-1]/subject" />
				</p>
		
				<!-- общее количество занятий, описанных в документе lesson.xml -->
				<p>Total of classes:
				<xsl:value-of select="count(/schedule/class/lesson)" />
				</p>	
				
				<!-- дату начала третьего курса из курсов, описанных в документе lesson.xml -->
				<p>Start time of 3rd class of 1B:
				<xsl:value-of select="/schedule/class[@id='1B']/lesson[3]/starttime" />
				</p>
				
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
