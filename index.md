---
title       : Australian Airport Passenger-traffic Analysis (AAA)
subtitle    : Interactive analysis of AAA
author      : just_np
job         : BI Consultant
framework   : io2012          # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js    # {highlight.js, prettify, highlight}
hitheme     : tomorrow       # tomorrow solarized_light
widgets     : [polycharts, bootstrap, shiny, interactive]
mode        : selfcontained # {selfcontained or standalone, draft}
ext_widgets : {rCharts: [libraries/nvd3]}
knit        : slidify::knit2slides
---


### Australian Airport Passenger-traffic Analysis (AAA)

Australian Airport Passenger-traffic Analysis (AAA) app provides a interactive analysis of domestic and international passenger movements across all states and cities of Australia.

The raw data for this analysis is downloaded from Bureau of Infrastructure, Transport and Regional Economics (BITRE) http://www.bitre.gov.au

The data used in AAA is spanned from year 1985 to 2013

In the following slides you can interactively analyse the Australian Airport Traffic dataset

---


## Interactive Airport Passenger Movements Analysis's by Airport type

<div class="row-fluid">
  <div class="span4">
    <form class="well">
      <label class="control-label" for="stktrafficType">Select Airport Type</label>
      <select id="stktrafficType"><option value="Domestic">Domestic</option>
<option value="International" selected>International</option></select>
      <script type="application/json" data-for="stktrafficType" data-nonempty="">{}</script>
      <label class="control-label" for="stkyear">Select year to compare States</label>
      <select id="stkyear"><option value="1985">1985</option>
<option value="1986">1986</option>
<option value="1987">1987</option>
<option value="1988">1988</option>
<option value="1989">1989</option>
<option value="1990">1990</option>
<option value="1991">1991</option>
<option value="1992">1992</option>
<option value="1993">1993</option>
<option value="1994">1994</option>
<option value="1995">1995</option>
<option value="1996">1996</option>
<option value="1997">1997</option>
<option value="1998">1998</option>
<option value="1999">1999</option>
<option value="2000">2000</option>
<option value="2001">2001</option>
<option value="2002">2002</option>
<option value="2003">2003</option>
<option value="2004">2004</option>
<option value="2005">2005</option>
<option value="2006">2006</option>
<option value="2007">2007</option>
<option value="2008">2008</option>
<option value="2009">2009</option>
<option value="2010">2010</option>
<option value="2011">2011</option>
<option value="2012">2012</option>
<option value="2013" selected>2013</option></select>
      <script type="application/json" data-for="stkyear" data-nonempty="">{}</script>
      <label class="control-label" for="type">Choose Chart Type</label>
      <select id="type"><option value="multiBarChart" selected>multiBarChart</option>
<option value="multiBarHorizontalChart">multiBarHorizontalChart</option></select>
      <script type="application/json" data-for="type" data-nonempty="">{}</script>
    </form>
  </div>
  <div class="span8">
    <div id="stkChart" class="shiny-html-output nvd3 rChart"></div>
  </div>
</div>

---

## Interactive Airport Passenger Movements Analysis's by Cities

<div class="row-fluid">
  <div class="span4">
    <form class="well">
      <label class="control-label" for="scttrafficType">Select Airport Type</label>
      <select id="scttrafficType"><option value="Domestic" selected>Domestic</option>
<option value="International">International</option></select>
      <script type="application/json" data-for="scttrafficType" data-nonempty="">{}</script>
      <label class="control-label" for="sctstate">Select a state to compare year</label>
      <select id="sctstate"><option value="ACT">ACT</option>
<option value="NSW">NSW</option>
<option value="NT" selected>NT</option>
<option value="QLD">QLD</option>
<option value="SA">SA</option>
<option value="TAS">TAS</option>
<option value="VIC">VIC</option>
<option value="WA">WA</option></select>
      <script type="application/json" data-for="sctstate" data-nonempty="">{}</script>
      <label class="control-label" for="type">Choose Chart Type</label>
      <select id="type"><option value="multiBarChart" selected>multiBarChart</option>
<option value="multiBarHorizontalChart">multiBarHorizontalChart</option></select>
      <script type="application/json" data-for="type" data-nonempty="">{}</script>
    </form>
  </div>
  <div class="span8">
    <div id="sctChart" class="shiny-html-output nvd3 rChart"></div>
  </div>
</div>
