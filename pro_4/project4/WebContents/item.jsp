<%@ page import="edu.ucla.cs.cs144.Item"%>
<%@ page import="edu.ucla.cs.cs144.User"%>
<!DOCTYPE html> 
<html> 
<head> 


<meta name="viewport" content="initial-scale=1.0, user-scalable=no" /> 
<style> 
  html { height: 100% }   /*if have background image,use this*/
  /*body { height: calc(100%-80px); margin: 1em 0em 1em 0em; padding: 0px } */


   #header1 {
      background-color: cornflowerblue;
      font-size: 35pt;
      width: 100%;
      height: 100px;
      text-align: center;    /*1.vertical align?  3. space before/after bullet points?*/ 
      position: fixed;
      display: inline-block;

      line-height:90px;      /*vertical align*/
      vertical-align: middle;
      top: 0;  
      left: 0;
   }
  .header{
      font-size: 20pt;
      font-weight: bolder;
   }

   #footer{
      background-color: black;
      color: white;
      width: 100%;
      height: 2em;            /*1em is 16 px*/
      text-align: right;
      line-height:40px; 
      position: fixed;
      top: calc(100% - 2em);
      left: 0;
   }


   #content{
      height: calc(100% - 132px);
      width: 80%;
      top: 100px;
      left: 10%;
      overflow: auto;
      position:fixed;
   }  

   #content_1 {
      width: calc(50% - 3em);   /* type="text/css"*/
      margin: 2em 0em 0em 1em;
      float:left;                     /*important!!!*/  /*fixed position doesn't go with scroll bar?*/
   }
   #content_2 {
      width: calc(50% - 1.5em);
      margin-top:2em;
      margin-left: 50%;                  /*can't use margin: 0em 1em 0em 1em ???*/
      margin-right:1em;

   }
  #map_canvas { 

      width: calc(50%);
      margin-left: 50%;                  /*can't use margin: 0em 1em 0em 1em ???*/
  } 

</style> 

<script type="text/javascript" 
    src="http://maps.google.com/maps/api/js?sensor=false"> 
</script> 

<script type="text/javascript"> 
  function initialize() { 
    var latlng = new google.maps.LatLng(34.063509,-118.44541); 
    var myOptions = { 
      zoom: 11, // default is 8    
      center: latlng, 
      mapTypeId: google.maps.MapTypeId.ROADMAP 
    }; 
    var map = new google.maps.Map(document.getElementById("map_canvas"), 
        myOptions); 
  } 
</script> 
</head> 
	<%
		Item item = (Item)request.getAttribute("item");
	%>
<body onload="initialize()"> 


      <div id="header1">Welcome to ebay search</div>

      <div id="content">
      <div id="content_1">
      <span class="header">Item Description</span><br>
		ItemId:<%=item.itemid%> <br>
		Name:<%=item.name%> <br>
		Currently:<%=item.currently%><br>
		First Bid:<%=item.first_bid%><br>
		Number of Bids:<%=item.number_of_Bids%><br>
		Location:<%=item.loc%><br>
		Country:<%=item.country%><br>
    Bids:<%=item.bids%><br>
      </div>
      <div id="content_2">
      <span class="header">Item Location</span><br>
   	  </div>
      <div id="map_canvas" style="width:40%; height:40%"></div> 

</div>


      <div id="footer">@ Copyright by University of California, Los Angeles (UCLA)</div>

</body>
</html>
