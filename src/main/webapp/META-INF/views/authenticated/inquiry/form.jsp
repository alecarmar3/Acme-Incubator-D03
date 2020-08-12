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
	<acme:form-textbox code="authenticated.inquiry.form.label.title" path="title"/>
	<acme:form-moment code="authenticated.inquiry.form.label.creation-date" path="creationDate"/>
	<acme:form-moment code="authenticated.inquiry.form.label.deadline" path="deadline"/>
	<acme:form-textarea code="authenticated.inquiry.form.label.body" path="body"/>
	<acme:form-money code="authenticated.inquiry.form.label.money-min" path="moneyMin"/>
	<acme:form-money code="authenticated.inquiry.form.label.money-max" path="moneyMax"/>
	<acme:form-textbox code="authenticated.inquiry.form.label.email" path="email"/>
	
	<acme:form-submit test="${command == 'show'}" code="administrator.inquiry.form.button.update" action="/administrator/inquiry/update"/>
	<acme:form-submit test="${command == 'show'}" code="administrator.inquiry.form.button.delete" action="/administrator/inquiry/delete"/>
	<acme:form-submit test="${command == 'create'}" code="administrator.inquiry.form.button.create" action="/administrator/inquiry/create"/>
	<acme:form-submit test="${command == 'update'}" code="administrator.inquiry.form.button.update" action="/administrator/inquiry/update"/>
	<acme:form-submit test="${command == 'delete'}" code="administrator.inquiry.form.button.delete" action="/administrator/inquiry/delete"/>
	
  	<acme:form-return code="authenticated.inquiry.form.button.return"/>
	
</acme:form>
