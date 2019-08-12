<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.scopeless64.web.models.Team" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Team List</title>
</head>
<body>
<a href="/TeamRoster2/newTeam">New Team</a>
<table>
<tr><th>Team</th><th>Players</th><th>Action</th></tr>

<%for(int i = 0; i < Team.getTeams().size();i++){ %>
<tr>
<td><%= Team.getTeams().get(i).getTeam_name() %></td><td><%= Team.getTeams().get(i).getPlayers().size() %></td><td><a href="/TeamRoster2/teams?id=<%=i%>">Details</a> <a href="/TeamRoster2/teams?id=<%=i%>&delete=true">Delete</a></td>
</tr>
<%} %>

</table>

</body>
</html>