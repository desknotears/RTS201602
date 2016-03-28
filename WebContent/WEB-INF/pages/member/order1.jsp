<div class="col-sm-offset-3">
	<p>past orders: </p>
	<table class="table">
		<thead>
			<th>Order No.</th>
			<th>Order Date</th>
			<th>credit card No.</th>
		</thead>
		<tbody>
			<tr ng-repeat="order in orders" ng-if="order.orderStatus==1">
				<td>{{order.orderNo}}</td>
				<td>{{order.orderDate}}</td>
				<td>{{order.creditCardNo}}</td>
			</tr>
		</tbody>
	</table>
</div>