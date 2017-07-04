
<%@ page import="edu.ucla.cs.cs144.SearchResult"%>
<html>

<head>
<style>

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
   #content{
      height: calc(100% - 132px);
      width: 80%;
      top: 100px;
      left: 10%;
      overflow: auto;
      position:fixed;
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
</style>



	Here is the search result<br>
</head>
<%
	SearchResult[] searchresult = (SearchResult[])request.getAttribute("result");
%>

<body>
      <div id="header1">Welcome to ebay search</div>

      

	<div id="content">
	<br><span class="header">Search Results</span><br><br>

	<table align='center' border='1' cellspacing='0'>
		<tr>
			<th> ItemID </th>
			<th> ItemName</th>
		</tr>
	<% for(SearchResult rs: searchresult) { %>
		<tr>
			<td>   <%=rs.getItemId()  %></td>
			<td>  <% 
					out.println("<a href=/eBay/item?itemid="+ rs.getItemId()+" > ");
					out.println(rs.getName());
					out.println("</a>");
					%> 
			</td>
		</tr>
		<%
		}
		%>
	</table>

	<button onclick="goBack()">Go Back</button>
      <script>
        function goBack() {
        window.history.back();
      }
    </script>

	<a href="?index=${index}&amp;query=${query}">next page</a>
	</div>

	<div id="footer">@ Copyright by University of California, Los Angeles (UCLA)</div>

	<br>
	
</body>
</html>