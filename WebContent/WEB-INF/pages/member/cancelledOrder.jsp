<div class="col-sm-offset-3">
	<p>past orders: </p>
	<table class="table">
		<thead>
			<th>Order No.</th>
			<th>Order Date</th>
			<th>CreditCard No.</th>
		</thead>
		<tbody>
			<tr ng-repeat="order in orders" ng-if="order.orderStatus==2">
				<td>{{order.orderNo}}</td>
				<td>{{order.orderDate}}</td>
				<td>{{order.creditCardNo}}</td>
			</tr>
		</tbody>
	</table>
</div>