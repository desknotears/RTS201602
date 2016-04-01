


<style>
	#div1{
	width:auto;
	height:auto;
	}


</style>
                        
			<div id=div1 ng-app="creditcardModule" ng-controller="creditcardController">
				<select class="OptionCtrl" ng-model="selected"
					ng-options="creditcard.cardNo for creditcard in creditcardData">
					<option value="">Please choose a card</option>
				</select>
				<table id="card" class="table table-bordered table-striped dataTable" role="grid";>
					<tr>
						<th>Payment Brand</th>
						<th>Card No</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Expiration Date</th>
						<th>Billing Address</th>
						<th>City</th>
						<th>State</th>
						<th>ZIP Code</th>
					</tr>
					<tr ng-hide="!selected">
						<td ><span ng-hide="editMode">{{selected.paymentBrand}}</span>
							<select ng-show="editMode" ng-model="selected.paymentBrand">
								<option value="visa">Visa</option>
								<option value="master">Master Card</option>
								<option value="discover">Discover</option>
								<option value="amex">American Express</option>
						</select></td>
						<td><span ng-hide="editMode" >{{selected.cardNo}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.cardNo" /></td>

						<td><span ng-hide="editMode">{{selected.firstName}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.firstName" /></td>

						<td><span ng-hide="editMode">{{selected.lastName}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.lastName" /></td>


						<td><span ng-hide="editMode">{{selected.expiration}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.expiration" /></td>


						<td><span ng-hide="editMode">{{selected.billingAddr}}</span>
							<input type="text" ng-show="editMode"
							ng-model="selected.billingAddr" /></td>


						<td><span ng-hide="editMode">{{selected.city}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.city" /></td>


						<td><span ng-hide="editMode">{{selected.state}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.state" /></td>

						<td><span ng-hide="editMode">{{selected.zipCode}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.zipCode" /></td>

						<td><span>
								<button type="submit" ng-hide="editMode"
									ng-click="editMode=true;editCard(selected,$index)">Edit</button>
						</span> <span>
								<button type="submit" ng-show="editMode"
									ng-click="editMode=false;saveCard(selected,$index)">Save</button>
						</span> <span>
						
					</tr>
				</table>
			</div>
			
                        <div class="panel-body">
                            <div id="shieldui-grid1"></div>
                        </div>

