<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
    <head>
      <title>Ермолаева Асия, P4110</title>
      <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
      <script src="https://cdn.jsdelivr.net/npm/mathjax@3.0.1/es5/tex-mml-chtml.js"></script>
    </head>
    <body>
      <xsl:apply-templates/>
    </body>
    </html>
  </xsl:template>

   <!--  преобразование формулы  -->

  <xsl:template match="задание1">
    <h2>Задание №1</h2>
    <math xmlns="http://www.w3.org/1998/Math/MathML">
      <xsl:apply-templates />
    </math>
    
  </xsl:template>

  <xsl:template match="строка">
    <mrow>
        <xsl:apply-templates select="*"/>
    </mrow>
  </xsl:template>

  <xsl:template match="операнд">
    <mi>
        <xsl:value-of select="." />
    </mi>
  </xsl:template>

  <xsl:template match="оператор">
    <mo>
        <xsl:value-of select="." />
    </mo>
  </xsl:template>

  <xsl:template match="корень">
    <msqrt>
        <xsl:apply-templates select="*"/>
    </msqrt>
  </xsl:template>

  <xsl:template match="дробь">
    <mfrac>
        <xsl:apply-templates select="*"/>
    </mfrac>
  </xsl:template>

  <xsl:template match="число">
    <mn>
        <xsl:value-of select="." />
    </mn>
  </xsl:template>

  <xsl:template match="низверх">
    <munderover>
        <xsl:apply-templates select="*"/>
    </munderover>
  </xsl:template>

  <xsl:template match="верх">
    <msup>
        <xsl:apply-templates select="*"/>
    </msup>
  </xsl:template>

  <xsl:template match="низ">
    <msub>
        <xsl:apply-templates select="*"/>
    </msub>
  </xsl:template> 

    <!-- отображение svg --> 

  <xsl:template match="задание2">
    <h2>Задание №2</h2>
      <svg width="{@ширина}" height="{@высота}" xmlns="http://www.w3.org/2000/svg">
        <xsl:apply-templates />
      </svg>
  </xsl:template>

  <xsl:template match="эллипс">
    <ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
  </xsl:template>

</xsl:stylesheet>