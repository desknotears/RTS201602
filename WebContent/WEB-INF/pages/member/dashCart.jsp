<div>
	
	<table class="table">
		<thead>
			<th>Shopping Cart</th>
			<th>Unit price</th>
			<th>Quantity</th>
		</thead>
		<tbody>
			<tr ng-repeat="t in uos" ng-if="uos.length!=0">
				<td>{{t.trainNo}}, from {{t.departureStation}} to {{t.arrivalStation}}</td>
				<td>{{t.price}}</td>
				<td>{{t.qty}}</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td>Total: {{total}}</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td><button ng-click="clearCart()" class="btn btn-default">Clear</button>
				<a class="btn btn-default" 
				   href="#/checkout">Check out</a></td>
			</tr>
		</tbody>
	</table>
</div>