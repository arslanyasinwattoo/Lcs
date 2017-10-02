<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:template>

	<div class="row">
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">List Of Blocked AccountHead</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>firstName</th>
									<th>lastName</th>
									<th>userName</th>
									<th>Email-ID</th>
									<th>Address</th>
									<th>Cnic</th>
									<th>Password</th>
									<th>ContactNumber</th>
									<th>Block</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${blockedList}" var="account">
									<tr>
										<td>${account.userFirstName}</td>
										<td>${account.userLastName}</td>
										<td>${account.username}</td>
										<td>${account.userEmailid}</td>
										<td>${account.userAddress}</td>
										<td>${account.userPassword}</td>
										<td>${account.userCnic}</td>
										<td>${account.useContactNumber}</td>
										<td>${account.block}</td>
										<td><a class="btn  btn-small" rel="tooltip"
											data-placement="bottom" data-original-title="Remove"
											href="${pageContext.request.contextPath}/updateAccountstatus.Inn?userId=${account.userId}&amp;accountHeadId=${account.accountHeadId}&amp;block=0&amp;check=1"><i
												class="gicon-remove "></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
	</div>
</t:template>