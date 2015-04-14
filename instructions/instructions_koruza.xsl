<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
	<title><xsl:value-of select="instructions/name"/></title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
  </head>

  <body>

  <div id="slide">
        <div id="instructions_title">
	        <h1><xsl:value-of select="instructions/name"/></h1>
	</div>
	<div id="instructions_description">
		<h2><xsl:value-of select="instructions/description"/></h2>
	</div>
	<xsl:variable name="URL" select="instructions/video/url"/>
	<xsl:variable name="img" select="instructions/image"/>

	<xsl:if test="instructions/video">
	<div id="instructions_video">

		<iframe  height="100%" width="100%" type="text/html"  src="{$URL}"  />
	</div>
	</xsl:if>

        <xsl:if test="instructions/image">
           <div id="instructions_video">
                  <img src="{$img}" class="image"/>
           </div>
        </xsl:if>

        <div id="parts_title">
	        <h2>COMPLETE BILL OF MATERIALS</h2> <a href="img/img2_3_4.jpg" target="_blank">Visit Website</a>
	</div>

	<div id="instructions_parts">

	  <div class="parts_table">
                  <table>
                  <tr style="background-color:rgba(41,60,78,1)">
                  <th>MODULE</th>
                  <th>SUB-MODULE</th>
                  <th>PART</th>
                  <th>DESCRIPTION</th>
                  <th>QUANTITY</th>
                  </tr>
                  
                  <xsl:for-each select="instructions/system_steps/module_steps">

                  <xsl:variable name="color">
                  <xsl:choose>
                  <xsl:when test="@order=1">
                  rgba(41,60,78,1)
                  </xsl:when>
                  <xsl:when test="@order=2">
                  rgba(55,80,105,1)
                  </xsl:when>
                  <xsl:when test="@order=3">
                  rgba(53,94,129,1)
                  </xsl:when>
                  <xsl:when test="@order=4">
                  rgba(53,111,162,1)
                  </xsl:when>
                  <xsl:when test="@order=5">
                  rgba(75,138,191,1)
                  </xsl:when>
                  <xsl:when test="@order=6">
                  rgba(95,156,208,1)
                  </xsl:when>
                  <xsl:otherwise>
                  rgba(119,179,229,1)
                  </xsl:otherwise>
                  </xsl:choose>
                  </xsl:variable>




                      <xsl:for-each select="sub_module_steps/logic_parts/logic_part">
                      <tr style="background-color:{$color}">
                      <td><xsl:value-of select="../../../module"/></td>
                      <td><xsl:value-of select="../../sub_module"/></td>
                      <td><xsl:value-of select="part_name"/></td>
                      <xsl:if test="file">
                      <td>
                        <xsl:for-each select="file">
                              <a href="{url}" target="_blank">File</a>
                        </xsl:for-each>
                      </td>
                      </xsl:if>
                      <xsl:if test="description">
                              <td><xsl:value-of select="description"/></td>
                      </xsl:if>
                      <td><xsl:value-of select="quantity"/></td>
                      </tr>
                     </xsl:for-each>
                     <tr>
                     <th/>
                     <th/>
                     <th/>
                     <th/>
                     </tr>
                  </xsl:for-each>
                  </table>
	</div>
	</div>
	
  </div>
  
  <div id="slide">
       <div id="instructions_title">
	        <h1>ASSEMBLY OF MODULES</h1>
       </div>
       <div id="instructions_description">
		<h3><xsl:value-of select="instructions/system_steps/description"/></h3>
       </div>
	<xsl:variable name="URL" select="instructions/system_steps/video/url"/>
	<xsl:variable name="img" select="instructions/system_steps/image"/>

	<xsl:if test="instructions/system_steps/video">
	<div id="instructions_video">

		<iframe  height="100%" width="100%" type="text/html"  src="{$URL}"  />
	</div>
	</xsl:if>

        <xsl:if test="instructions/system_steps/image">
           <div id="instructions_video">
                  <img src="{$img}" class="image"/>
           </div>
        </xsl:if>
        
        <div id="instructions_parts">

	  <div class="parts_table">
                  <table>
                  <tr style="background-color:rgba(55,80,105,255)">
                  <th>MODULE</th>
                  <th>SUB-MODULE</th>
                  <th>PART</th>
                  <th>DESCRIPTION</th>
                  <th>QUANTITY</th>
                  </tr>
                  </table>
	</div>
	</div>
	
 <xsl:for-each select="instructions/system_steps/steps/step">
	<div class="step_image">

            <xsl:if test="image">
            <xsl:variable name="img" select="image"/>
                          <img src="{$img}" class="image"/>
            </xsl:if>
	</div>
	<div class="step_description" style="background-color:rgba(73,113,147,1)">
          <div class="step_description_text" style="background-color:rgba(73,113,147,1)">
                <p><xsl:value-of select="description"/></p>
          </div>
        </div>
	</xsl:for-each>
  
  
        <div id="instructions_title">
	        <h1>INDIVIDUAL MODULES</h1>
       </div>
       <div id="system_img">
	        <img src="system.png" class="system" alt=""/>
       </div>
       <div id="module_container">
            <xsl:for-each select="instructions/system_steps/module_steps">
                  <xsl:variable name="color2">
                  <xsl:choose>
                  <xsl:when test="@order=1">
                  rgba(41,60,78,1)
                  </xsl:when>
                  <xsl:when test="@order=2">
                  rgba(55,80,105,1)
                  </xsl:when>
                  <xsl:when test="@order=3">
                  rgba(53,94,129,1)
                  </xsl:when>
                  <xsl:when test="@order=4">
                  rgba(53,111,162,1)
                  </xsl:when>
                  <xsl:when test="@order=5">
                  rgba(75,138,191,1)
                  </xsl:when>
                  <xsl:when test="@order=6">
                  rgba(95,156,208,1)
                  </xsl:when>
                  <xsl:otherwise>
                  rgba(119,179,229,1)
                  </xsl:otherwise>
                  </xsl:choose>
                  </xsl:variable>
                  
                  <div class="system_modules" style="color:{$color2}">
                        <h3><xsl:value-of select="@order"/>. <xsl:value-of select="module"/></h3>
                  </div>
                  

            </xsl:for-each>
       </div>
  </div>


  <xsl:for-each select="instructions/system_steps/module_steps">

  
  <xsl:variable name="color2">
  <xsl:choose>
  <xsl:when test="@order=1">
  rgba(41,60,78,1)
  </xsl:when>
  <xsl:when test="@order=2">
  rgba(55,80,105,1)
  </xsl:when>
  <xsl:when test="@order=3">
  rgba(53,94,129,1)
  </xsl:when>
  <xsl:when test="@order=4">
  rgba(53,111,162,1)
  </xsl:when>
  <xsl:when test="@order=5">
  rgba(75,138,191,1)
  </xsl:when>
  <xsl:when test="@order=6">
  rgba(95,156,208,1)
  </xsl:when>
  <xsl:otherwise>
  rgba(119,179,229,1)
  </xsl:otherwise>
  </xsl:choose>
  </xsl:variable>
  

<xsl:if test="steps">
<div class="module">
        <div class="module_title" style="background-color:{$color2}">
	        <h1><xsl:value-of select="@order"/>. <xsl:value-of select="module"/></h1>
	</div>

        <div class="module_description" style="background-color:{$color2}">
		<h3><xsl:value-of select="description"/></h3>
	</div>



	<xsl:if test="video">
        <xsl:variable name="URL" select="video/url"/>
	<div id="instructions_video">

		<iframe  height="100%" width="100%" type="text/html"  src="{$URL}"  />
	</div>
	</xsl:if>

        <xsl:if test="image">
        <xsl:variable name="img" select="image"/>
           <div id="instructions_video">
                  <img src="{$img}" class="image"/>
           </div>
        </xsl:if>
        
	<div class="module_parts">

	  <div class="module_parts_table">
                  <table>
                  <tr style="background-color:{$color2}">
                  <th>MODULE</th>
                  <th>SUB-MODULE</th>
                  <th>PART</th>
                  <th>DESCRIPTION</th>
                  <th>QUANTITY</th>
                  </tr>
                  
                  <xsl:for-each select="sub_module_steps/logic_parts/logic_part">
                      <tr style="background-color:{$color2}">
                      <td><xsl:value-of select="../../../module"/></td>
                      <td><xsl:value-of select="../../sub_module"/></td>
                      <td><xsl:value-of select="part_name"/></td>
                      <xsl:if test="file">
                      <td>
                        <xsl:for-each select="file">
                              <a href="{url}" target="_blank">File</a>
                        </xsl:for-each>
                      </td>
                      </xsl:if>
                      <xsl:if test="description">
                              <td><xsl:value-of select="description"/></td>
                      </xsl:if>
                      <td><xsl:value-of select="quantity"/></td>
                      </tr>
                  </xsl:for-each>
                  </table>
          </div>


        </div>
        
        <xsl:for-each select="steps/step">
	<div class="step_image">

            <xsl:if test="image">
            <xsl:variable name="img" select="image"/>
                          <img src="{$img}" class="image"/>
            </xsl:if>
	</div>
	<div class="step_description" style="background-color:{$color2}">
          <div class="step_description_text" style="background-color:{$color2}">
                <p><xsl:value-of select="description"/></p>
          </div>
          
        </div>

	</xsl:for-each>
	
	<xsl:for-each select="sub_module_steps">
	
               <div class="sub_module_title" style="background-color:{$color2}">
	            <h2><xsl:value-of select="../@order"/>.<xsl:value-of select="@order"/>  <xsl:value-of select="sub_module"/></h2>
               </div>
               
               <div class="module_parts">

        	  <div class="module_parts_table">
                          <table>
                          <tr style="background-color:{$color2}">
                          <th>MODULE</th>
                          <th>SUB-MODULE</th>
                          <th>PART</th>
                          <th>DESCRIPTION</th>
                          <th>QUANTITY</th>
                          </tr>
                          

                          <xsl:variable name="sub_module" select="sub_module"/>
                          
                          <xsl:for-each select="logic_parts/logic_part">

                              <tr style="background-color:{$color2}">
                              <td><xsl:value-of select="../../../module"/></td>
                              <td><xsl:value-of select="../../sub_module"/></td>
                              <td><xsl:value-of select="part_name"/></td>
                              <xsl:if test="file">
                              <td>
                                <xsl:for-each select="file">
                                      <a href="{url}" target="_blank">File</a>
                                </xsl:for-each>
                              </td>
                              </xsl:if>
                              <xsl:if test="description">
                                      <td><xsl:value-of select="description"/></td>
                              </xsl:if>
                              <td><xsl:value-of select="quantity"/></td>
                              </tr>

                          </xsl:for-each>
                          </table>
                  </div>


                </div>
               
               <xsl:for-each select="steps/step">
        	<div class="step_image">

                    <xsl:if test="image">
                    <xsl:variable name="img" select="image"/>
                                  <img src="{$img}" class="image"/>
                    </xsl:if>
        	</div>
        	<div class="step_description" style="background-color:{$color2}">
                  <div class="step_description_text" style="background-color:{$color2}">
                        <p><xsl:value-of select="description"/></p>
                  </div>
                  <div class="step_description_parts" style="background-color:{$color2}">
                     <table class="step_table" style="color:{$color2}">
                          <tr class="ss1" style="background-color:white; border-color:{$color2}">

                          <th class="ss1" style="border-color:{$color2}">PART</th>
                          <th class="ss1" style="border-color:{$color2}">DESCRIPTION</th>
                          <th class="ss1" style="border-color:{$color2}">QUANTITY</th>
                          </tr>

                          <xsl:for-each select="step_parts/step_part">
                              <xsl:variable name="part" select="part"/>
                              <xsl:variable name="quantity" select="quantity"/>

                               <xsl:for-each select="../../../../logic_parts/logic_part[@order=$part]">

                              <tr class="ss" style="background-color:white; border-color:{$color2}">

                              <td class="ss" style="border-color:{$color2}"><xsl:value-of select="part_name"/></td>
                              <xsl:if test="file">
                              <td class="ss" style="border-color:{$color2}">
                                <xsl:for-each select="file">
                                      <a style="color:{$color2}" href="{url}" target="_blank">File</a>
                                </xsl:for-each>
                              </td>
                              </xsl:if>
                              <xsl:if test="description">
                                      <td class="ss" style="border-color:{$color2}"><xsl:value-of select="description"/></td>
                              </xsl:if>
                              <td class="ss" style="border-color:{$color2}"><xsl:value-of select="quantity"/></td>
                              </tr>

                             </xsl:for-each>
                          </xsl:for-each>

                     </table>
                  </div>

                </div>
        	</xsl:for-each>
	
	</xsl:for-each>
</div>
</xsl:if>
</xsl:for-each>


  </body>
  </html>
</xsl:template>





</xsl:stylesheet>














