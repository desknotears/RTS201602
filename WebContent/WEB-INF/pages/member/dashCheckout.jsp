<div class="col-sm-5 col-sm-offset-3  text-left">
		<h3>Payment Method</h3>
		<br>

		<h4>Credit Card Information</h4>
		<br>
		<table class="table table-striped table-bordered">
			<tbody>
				<tr>
					<td class="col-sm-4">First Name:</td>
					<td><input type="text" ng-model="cc.firstName" maxlength=50
						placeholder="First Name" required /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" ng-model="cc.lastName" maxlength=50
						placeholder="Last Name" required /></td>
				</tr>
				<tr>
					<td>Credit Card Type</td>
					<td><select ng-model="cc.cardType" required>
							<option value="visa">Visa</option>
							<option value="master">Master</option>
							<option value="discover">Discover</option>
							<option value="amex">American Express</option>
					</select></td>
				</tr>
				<tr>
					<td>Credit Card No:</td>
					<td><input type="text" name="cardNo" id="cardNo"
						ng-model="cc.cardNo" maxlength=20 placeholder="Credit Card Number"
						required /></td>
				</tr>
				<tr>
					<td>Expiration Date:</td>
					<td><input type="text" ng-model="cc.exp" maxlength=7
						placeholder="MM/YYYY" required /></td>
				</tr>
				<td>CVV:</td>
				<td><input type="text" ng-model="cc.cvv" maxlength=4
					placeholder="CVV" required /></td>
				</tr>
			</tbody>
		</table>
		<br>
		<h4>Billing Address</h4>
		<br>
		<table class="table table-striped table-bordered">
			<tbody>
				<tr>
					<td class="col-sm-4">Address:</td>
					<td><input type="text" ng-model="cc.billingAddr" maxlength=100
						placeholder="billing address" required /></td>
				</tr>
				<tr>
					<td>City:</td>
					<td><input type="text" ng-model="cc.city" maxlength=30
						placeholder="City" required /></td>
				</tr>
				<tr>
					<td>State:</td>
					<td><select ng-model="cc.state" required>
							<option value="AL">Alabama</option>
							<option value="AK">Alaska</option>
							<option value="AZ">Arizona</option>
							<option value="AR">Arkansas</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DE">Delaware</option>
							<option value="DC">District Of Columbia</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="IA">Iowa</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="ME">Maine</option>
							<option value="MD">Maryland</option>
							<option value="MA">Massachusetts</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MS">Mississippi</option>
							<option value="MO">Missouri</option>
							<option value="MT">Montana</option>
							<option value="NE">Nebraska</option>
							<option value="NV">Nevada</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NY">New York</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VT">Vermont</option>
							<option value="VA">Virginia</option>
							<option value="WA">Washington</option>
							<option value="WV">West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY">Wyoming</option>
					</select></td>
				</tr>
				<tr>
					<td>Zip:</td>
					<td><input type="text" ng-model="cc.zip" maxlength=5
						placeholder="Zip" required /></td>
				</tr>
			</tbody>

		</table>
		<!-- ng-disabled="isSubmitOrder || (!checkCard(cc.cardNo))" -->
		<button
			ng-click="checkout()" ng-disabled="!checkCard(cc.cardNo)"
			class="col-sm-3 col-sm-offset-8 btn btn-primary btn-md">Submit</button>
</div>