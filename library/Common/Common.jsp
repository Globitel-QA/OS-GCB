
<%
	//session.setAttribute("SessionID", "rtyruiutyrtyrtyre54353453");
%>

<%! private String htmlspecialchars(String str) {

		try {
			str = str.replaceAll("&", "&amp;");
			str = str.replaceAll("<", "&lt;");
			str = str.replaceAll(">", "&gt;");
			str = str.replaceAll("\"", "&quot;");
			str = str.replaceAll("\'", "&#x27;");
			str = str.replaceAll("\\/", "&#x2F;");
			str = str.replaceAll("/", "&#x2F;");
			//str = str.replaceAll("\'", "&apos;"); 
			// &apos; not recommended because its not in the HTML spec (See: section 24.4.1) &apos; is in the XML and XHTML specs.

			return str;
		} catch (Exception e) {
			return str;
			// TODO: handle exception
		}

	}%>