<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@page import="com.crystaldecisions.sdk.occa.report.exportoptions.ReportExportFormat"%>

<%
	//Crystal Report Viewer imports.
%>
<%@page import="com.crystaldecisions.report.web.viewer.*"%>
<%@page import="com.crystaldecisions.reports.sdk.*"%>
<%@ page
	import="com.crystaldecisions.report.web.viewer.CrystalImageCleaner"%>
<%@ page
	import="com.crystaldecisions.report.web.viewer.CrystalReportViewer"%>
<%@ page
	import="com.crystaldecisions.report.web.viewer.CrystalReportPartsViewer"%>

<%@ page import="com.crystaldecisions.sdk.occa.report.data.*"%>
<%@ page
	import="com.crystaldecisions.reports.reportengineinterface.JPEReportSourceFactory"%>
<%@ page
	import="com.crystaldecisions.sdk.occa.report.reportsource.IReportSourceFactory2"%>
<%@ page
	import="com.crystaldecisions.sdk.occa.report.reportsource.IReportSource"%>

<%@ page import="java.sql.Connection"%>

<%@ page import="org.apache.logging.log4j.Logger"%>
<%@ page import="com.globitel.utilities.commons.logger.MyLoggerFactory"%>
<%@ page import="com.globitel.utilities.commons.logger.MessageLogger"%>

<%
	/* 
	 * Applies to: XI Release 2.
	 * Date Created: December 2005.
	 * Description: This sample demonstrates to how to launch a report in the Crystal Report DHTML viewer (CrystalReportViewer).
	 *				NOTE: The CrystalReportViewer is kept on this special viewer page as the viewer also will 'post-back' during 
	 *				a viewer event such as page navigation, drill down, or launching other toolbar commands.  The viewer
	 *				then renders a new 'view' of the report source object previously created before calling this page and stored in session.
	 * Author: CW
	 */
%>




<%
	/*
	 * This page opens the report viewer on the server chosen in the previous pages.
	 * When an item on the report is clicked, this same page is loaded again
	 * to display the new report view.  Information about the report state is saved
	 * as post data.
	 */
%>

<%!public void jspInit() {
		CrystalImageCleaner.start(getServletContext(), 60000, 12000);
	}

	public void jspDestroy() {
		CrystalImageCleaner.stop(getServletContext());
	}%>

<%
	MessageLogger logger = MyLoggerFactory.getInstance().getLogger("gcb.log");
%>

<%
	String title;

	try {

		String isCon = "";
		Connection conn = null;
		String viewerToLaunch = (String) session.getAttribute("viewerToLaunch");
		Object reportSource = session.getAttribute("reportSource");
		ReportClientDocument reportClientDoc = (ReportClientDocument) session.getAttribute("reportClientDoc");

		logger.trace("reportClientDoc  = " + reportClientDoc);

		conn = (Connection) session.getAttribute("conn");
		logger.trace("Connection  = " + conn);

		logger.trace("Source = " + reportSource);
		logger.trace("reportClientDoc.getReportSource() = " + reportClientDoc.getReportSource());

		if (request.getParameter("ReportName") == null) {
			title = (String) session.getAttribute("Title");
			logger.trace("title = " + title);
		} else {
			title = request.getParameter("ReportName");

			logger.trace("============================>" + title);
			logger.trace("ReportName = " + title);
			session.setAttribute("Title", title);
		}

		com.crystaldecisions.report.web.viewer.CrystalReportViewer viewer = new com.crystaldecisions.report.web.viewer.CrystalReportViewer();

		viewer.setReportSource(reportClientDoc.getReportSource());
		//viewer.setReportSource(reportSource);
		viewer.setName(title);
		viewer.setDisplayPage(true);
		viewer.setDisplayToolbar(true);
		viewer.setDisplayGroupTree(false);

		viewer.setHasToggleGroupTreeButton(false);
		viewer.setHasToggleParameterPanelButton(false);
		viewer.setHasLogo(false);

		viewer.setOwnPage(true);
		viewer.setEnableDrillDown(false);

		viewer.setEnableLogonPrompt(true);
		viewer.setEnableParameterPrompt(true);
		viewer.processHttpRequest(request, response, getServletContext(), null);

		if (conn.isClosed()) {
			logger.trace("conn closed");
		} else {
			conn.close();
			logger.trace("conn closed");
		}

		if (reportClientDoc.isOpen()) {
			reportClientDoc.close();
			logger.trace("reportClientDoc closed ");
		} else {
			logger.trace("reportClientDoc closed ");
		}
%>








<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<!-- #include file=Utilities.jsp -->

<body>

	<%
		out.println(" <script   language=\"javascript\" type=\"text/javascript\"> document.title=\"" + title
					+ "\";</script>");
	%>

	<%
		} catch (Exception e) {
			out.println(
					"<img src='./images/Error.jpg' style='display: block;margin-top: 8%;margin-left: auto;margin-right: auto;'>");
		}
	%>
</body>
</html>
