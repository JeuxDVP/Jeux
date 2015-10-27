<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">


		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

			<fo:layout-master-set>
				<fo:simple-page-master master-name="main">
					<fo:region-body margin="2cm 0 2cm 0" column-count="2"/>
				</fo:simple-page-master>
			</fo:layout-master-set>

			<fo:page-sequence master-reference="main" font-size="10pt">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>Coucou</fo:block>
				</fo:flow>
			</fo:page-sequence>

		</fo:root>
	</xsl:template>
</xsl:stylesheet>
