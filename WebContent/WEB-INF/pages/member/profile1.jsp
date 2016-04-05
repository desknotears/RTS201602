<div class="col-sm-offset-4" >
	<table class="table">
		<tr>
			<td>User FirstName: </td>
			
			
			<td><span ng-hide="editMode">{{profile.firstName}}</span>
			<input type="text" ng-show="editMode" ng-model="profile.firstName"/>
			</td>
		<!-- 	<td>{{profile.firstName}} {{profile.lastName}}</td>   -->
		</tr>
		
		<tr>
			<td>User LastName: </td>
			
			
			<td><span ng-hide="editMode">{{profile.lastName}}</span>
			<input type="text" ng-show="editMode" ng-model="profile.lastName"/>
			</td>
		<!-- 	<td>{{profile.firstName}} {{profile.lastName}}</td>   -->
		</tr>
		
		
		
		
		<tr>
			<td>Email Address: </td>
			<td><span ng-hide="editMode">{{profile.email}}</span>
			<input type="text" ng-show="editMode" ng-model="profile.email"/>
			</td>
<!-- 			<td>{{profile.email}}</td>	 -->
		</tr>
		<tr>
			<td>Address: </td>
			<td><span ng-hide="editMode">{{profile.address}}</span>
			<input type="text" ng-show="editMode" ng-model="profile.address"/>
			</td>
			
		</tr>
		<tr>
			<td>City: </td>
			<td><span ng-hide="editMode">{{profile.city}}</span>
			<input type="text" ng-show="editMode" ng-model="profile.city"/>
			</td>
			
		</tr>
		<tr>
			<td>State: </td>
			<td><span ng-hide="editMode">{{profile.state}}</span>
			<input type="text" ng-show="editMode" ng-model="profile.state"/>
			</td>
		</tr>
		<tr>
			<td>Zip Code:</td>
			<td><span ng-hide="editMode">{{profile.zipCode}}</span>
			<input type="text" ng-show="editMode" ng-model="profile.zipCode"/>
			</td>
	</table>
	
	
	<div class="col-sm-offset-6">
		<span><button type="submit" ng-hide="editMode"
			ng-click="editMode=true">Edit</button>
		</span> 
		<span><button type="submit" ng-show="editMode"
			ng-click="editMode=false;saveAccount(profile)">Save</button>
		</span> 
	</div>
</div>