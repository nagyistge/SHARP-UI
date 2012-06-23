
<%@ page import="edu.asu.bmi.greenes.users.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li class="active">
							<g:link class="list" action="list">
								<i class="icon-list icon-white"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>

			<div class="span9">
				
				<div class="page-header">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="username" title="${message(code: 'person.username.label', default: 'Username')}" />
						
							<g:sortableColumn property="email" title="${message(code: 'person.email.label', default: 'Email')}" />
						
							<g:sortableColumn property="password" title="${message(code: 'person.password.label', default: 'Password')}" />
						
							<g:sortableColumn property="accountExpired" title="${message(code: 'person.accountExpired.label', default: 'Account Expired')}" />
						
							<g:sortableColumn property="accountLocked" title="${message(code: 'person.accountLocked.label', default: 'Account Locked')}" />
						
							<g:sortableColumn property="enabled" title="${message(code: 'person.enabled.label', default: 'Enabled')}" />
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${personInstanceList}" var="personInstance">
						<tr>
						
							<td>${fieldValue(bean: personInstance, field: "username")}</td>
						
							<td>${fieldValue(bean: personInstance, field: "email")}</td>
						
							<td>${fieldValue(bean: personInstance, field: "password")}</td>
						
							<td><g:formatBoolean boolean="${personInstance.accountExpired}" /></td>
						
							<td><g:formatBoolean boolean="${personInstance.accountLocked}" /></td>
						
							<td><g:formatBoolean boolean="${personInstance.enabled}" /></td>
						
							<td class="link">
								<g:link action="show" id="${personInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${personInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
