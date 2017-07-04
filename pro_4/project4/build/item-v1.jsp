<%@ page import="edu.ucla.cs.cs144.Item"%>
<%@ page import="edu.ucla.cs.cs144.User"%>

<!-- public String itemid = null;

	public String name = null;
	public List<String> category = null;
	public String currently;
	public String buy_price;
	public String first_bid;
	public int number_of_Bids;
	public List<Bid> bids;
	public Location loc = null;
	public String country = null;
	public String started = null;
	public String ends = null;
	public User sel = null;
	public String description = null;
 -->

<!--
<html>
	<head></head>	
	<%
		Item item = (Item)request.getAttribute("item");
	%>
	<body>
		ItemId:<%=item.itemid%> <br>
		Name:<%=item.name%> <br>
		Currently:<%=item.currently%><br>

	</body>
</html>
-->


<head> 
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" /> 
<style type="text/css"> 
  html { height: 50% } 
  body { height: 50%; margin: 100px; padding: 0px } 
  #map_canvas { height: 100% } 
</style> 
<script type="text/javascript" 
    src="http://maps.google.com/maps/api/js?sensor=false"> 
</script> 
<script type="text/javascript"> 

  function initialize() { 
    var latlng = new google.maps.LatLng(34.063509,-118.44541); 
    var myOptions = { 
      zoom: 8, // default is 8  
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
		ItemId:<%=item.itemid%> <br>
		Name:<%=item.name%> <br>
		Currently:<%=item.currently%><br>
  <div id="map_canvas" style="width:100%; height:100%"></div> 
</body> 