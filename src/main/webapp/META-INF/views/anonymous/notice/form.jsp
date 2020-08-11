<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-url code="anonymous.notice.form.label.header-picture" path="headerPicture"/>
	<acme:form-textbox code="anonymous.notice.form.label.title" path="title"/>
	
	<jstl:if test="${command != 'create'}">
		<acme:form-moment code="anonymous.notice.form.label.creation-date" path="creationDate" readonly="true"/>
	</jstl:if>
	
	<acme:form-moment code="anonymous.notice.form.label.deadline" path="deadline"/>
	<acme:form-textarea code="anonymous.notice.form.label.body" path="body"/>
	<acme:form-url code="anonymous.notice.form.label.web-links" path="webLinks"/>
	
	<acme:form-submit test="${command == 'create'}" code="anonymous.notice.form.button.create" action="/anonymous/notice/create"/>
	
  	<acme:form-return code="anonymous.notice.form.button.return"/>
  	
	
</acme:form>
