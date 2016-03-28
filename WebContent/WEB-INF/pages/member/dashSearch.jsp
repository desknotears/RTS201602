
	<div class="container search-form">
		<div class="row form-row">
			<div class="col-sm-1 col-sm-offset-3">
				Departure Station:
			</div>
			<div class="col-sm-4">
				<div angucomplete-alt id="ds"
					  placeholder="From"
					  field-required="true"
					  pause="100"
					  selected-object="departureStation"
					  local-data="stations"
					  search-fields="display"
					  title-field="display"
					  minlength="1"
					  input-class="form-control form-control-small"
					  match-class="highlight"></div>
			</div>
		</div>
		<div class="row form-row">
			<div class="col-sm-1 col-sm-offset-3">
				Arrival Station:
			</div>
			<div class="col-sm-4">
			<div angucomplete-alt id="as"
			  placeholder="To"
			  field-required="true"
			  pause="100"
			  selected-object="arrivalStation"
			  local-data="stations"
			  search-fields="display"
			  title-field="display"
			  minlength="1"
			  input-class="form-control form-control-small"
			  match-class="highlight"></div>
			</div>
		</div>
		<div class="row form-row">
			<div class="col-sm-1 col-sm-offset-3">
				Departure Date:
			</div>
			<div class="col-sm-2 dropdown">
				<datepicker date-min-limit="2015/10/08"
					date-format="{{'MM/dd/yyyy'}}"
					button-prev="<i class='fa fa-arrow-left'></i>"
					button-next="<i class='fa fa-arrow-right'></i>" required>
					<input ng-model="departureDate" type="text"
						placeholder="Input Departure Date"
						class="form-control form-control-small"/>
				</datepicker>
			</div>
			<div class="col-sm-offset-3">
				<button class="btn btn-success" ng-click="show()">Search</button>
			</div>
		</div>
	</div>

<div class="container col-sm-10 col-sm-offset-1 result-form">
	<table class="table table-striped">
		<thead>
			<th><h4>Train No.</h4></th>
			<th><h4>Available Ticket</h4></th>
			<th><h4>price</h4></th>
			<th><h4>Departure Time</h4></th>
			<th><h4>Arrival Time</h4></th>
			<th><h4>Qty</h4></th>
			<th><h4></h4></th>
		</thead>
		<tbody  ng-show="canShowTable">
			<tr ng-repeat="schedule in scheduleList">
				<td>{{schedule.train.trainNo}}</td>
				<td>{{schedule.availableTickets}}</td>
				<td>{{schedule.price}}</td>
				<td>{{schedule.departureTime}}</td>
				<td>{{schedule.arrivalTime}}</td>
				<td>
					<input id="bookingQty" 
					name="bookingQty" type="number" 
					max=100 width=10 placeholder="quantity" 
					ng-model="schedule.bookingQty" class="form-controll" />
				</td>
				<td>
					<button class="btn-default btn-primary btn-sm" ng-click="addToCart(schedule)">add to cart</button>
				</td>
			</tr>
		</tbody>
	</table>
</div>
