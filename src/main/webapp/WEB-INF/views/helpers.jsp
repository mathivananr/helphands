<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Kerala Flood collection center near me</title>
<meta name="description" content="Grouping the collection centers and contributors in one place.">
<meta name="keywords" content="Kerala Flood, collection center near me, contributor near me">
<meta property="og:title" content="Kerala Flood collection center near me" />
<meta property="og:description" content="Grouping the collection centers and contributors in one place." />
</head>

<body class="bg-light" data-gr-c-s-loaded="true"
	cz-shortcut-listen="true">
	<input type="hidden" id="start" value="10" />
	<input type="hidden" id="reached" value="no" />
	<main role="main"> <!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="col-md-4">
			</div>
			
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
				<h2 class="display-5">Help for "KERALA FLOOD RELIEF"</h2>
				</div>
				<div class="col-md-4">
				<a
					href="http://www.facebook.com/sharer.php?u=https://lping.in"
					target="_blank"> <img
					src="https://simplesharebuttons.com/images/somacro/facebook.png"
					alt="Facebook" />
				</a>
				<a
					href="https://twitter.com/share?url=http://lping.in&amp;text=Group%20of%20Volunteers%20and%20Contributors&amp;hashtags=lping"
					target="_blank"> <img
					src="https://simplesharebuttons.com/images/somacro/twitter.png"
					alt="Twitter" />
				</a>
				 <!-- Google+ -->
			    <a href="https://plus.google.com/share?url=http://lping.in" target="_blank">
			        <img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />
			    </a>
			</div>
				<div class="col-md-12">
					<p>
						Find here a collection center or contributors near you.
						<br/>
						This site allows volunteers to post information of their collection center and location for kerala flood releif materials, which allows the contributors to effectively contact the volunteers. 
						<br/>
Also, The contributors can provide the relief materials directly in the collection center, or post their details in this site, which helps volunteers to contact and collect the relief materials.
<br/><br/>
To post collection center, click "Post Collection Center". To contribute, click "Contribute".
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-4">
					<button id="to_collect" type=button
						class="btn btn-outline-danger btn-lg" role="button">Post Collection Center</button>
				</div>
				<div class="col-md-4">
					<button id="to_contribute" type=button
						class="btn btn-outline-danger btn-lg" role="button">Contribute</button>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			<form:form method="post" modelAttribute="helper" action="/addHelper"
				id="helper_form" class="col-md-12 d-none">
				<form:hidden path="id" />
				<form:hidden path="status" value="Active"/>
				<div class="row" id="add_detail">
				</div>
				<div class="row">
					<div class="col-md-4">
						<form:label path="helperName">Name:</form:label>
						<form:input class="form-control" path="helperName" required="required" placeholder="Individual/Group Name"></form:input>
					</div>
					<div class="col-md-4">
						<form:label path="helpFor">For:</form:label>
						<form:input class="form-control" path="helpFor" value="kerala flood"></form:input>
					</div>
					<div class="col-md-4">
						<form:label path="helperType">Type:</form:label>
						<form:input class="form-control" path="helperType"></form:input>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<form:label path="mobileNo">Mobile No:</form:label>
						<form:input class="form-control" path="mobileNo" placeholder="mobile no to update post status" required="required"></form:input>
					</div>
					<div class="col-md-4">
						<form:label path="contactNo">Contact No:</form:label>
						<form:input class="form-control" path="contactNo" required="required"></form:input>
					</div>
					<div class="col-md-4">
						<form:label path="countryName">Country:</form:label>
						<form:input autocomplete="off" class="form-control" path="countryName" value="India" id="country"></form:input>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<form:label path="stateName">State:</form:label>
						<form:input autocomplete="off" class="form-control" path="stateName" id="state"></form:input>
					</div>

					<div class="col-md-4">
						<form:label path="cityName">City:</form:label>
						<form:input autocomplete="off" class="form-control" path="cityName" id="city"></form:input>
					</div>
					<div class="col-md-4">
						<form:label path="areaName">Area:</form:label>
						<form:input class="form-control" path="areaName" id="area"></form:input>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<form:label path="landmark">Landmark:</form:label>
						<form:input class="form-control" path="landmark"></form:input>
					</div>					
					<div class="col-md-8">
						<form:label path="description">Description:</form:label>
						<form:textarea class="form-control" path="description" rows="10"></form:textarea>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<br/>
						<button type="submit" class="btn btn-primary btn-lg float-right">Add</button>
					</div>
				</div>
				</table>
			</form:form>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12" id="grid_heading">
				<h2>Near Collection Center List</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<input type="text" id="help_for_filter" name="helpFor"
					class="form-control" placeholder="Help For" Value="kerala flood" />
			</div>
			<div class="col-md-2">
				<select type="text" id="helper_type_filter" name="helperType"
					class="form-control" placeholder="Helper Type" Value="Kerala Flood">
					<options>
					<option value=""></option>
					<option value="collector">Collector</option>
					<option value="contributor">Contributor</option>
					</options>
				</select>
			</div>
			<div class="col-md-2">
				<input autocomplete="off" type="text" id="country_filter" name="country"
					class="form-control" placeholder="Country" Value="India" />
			</div>
			<div class="col-md-2">
				<input autocomplete="off" type="text" id="state_filter" name="state"
					class="form-control" placeholder="State" />
			</div>
			<div class="col-md-2">
				<input autocomplete="off" type="text" id="city_filter" name="city" class="form-control"
					placeholder="City" />
			</div>
			<div class="col-md-2">
				<input autocomplete="off" type="text" id="area_filter" name="area" class="form-control"
					placeholder="Area" />
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col-md-12">
				<button type="button" class="btn btn-primary float-right"
					id="search">Search</button>
			</div>
		</div>
		<div class="clearfix"></div>
		<br />
		<div class="row">
			<div class="col-md-12">
				<c:if test="${!empty listOfHelpers}">
					<table class="table" id="help_details">
						<tr>
							<th width="5">Id</th>
							<th width="25">Name</th>
							<th width="50">Description</th>
							<th width="20">Posted Date</th>
						</tr>
						<c:forEach items="${listOfHelpers}" var="helper">
							<tr>
								<td>${helper.id}</td>
								<td>Name : ${helper.helperName} 
								<br /> Contact No : ${helper.contactNo}
								<br /> City : ${helper.cityName}
								<br /> Area : ${helper.areaName}
								</td>
								<td style="white-space: pre-line;">${helper.description}</td>
								<td><fmt:formatDate pattern="MM/dd/yyyy, hh:mm:ss a"
										value="${helper.createdTime.time}"></fmt:formatDate></td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>
		</div>

		<hr>

	</div>
	<!-- /container --> </main>

	<footer class="container">
		<p>To update the post as closed use this link <a href="http://lping.in/closePost/place-post-id-here/place-mobile-no-here">http://lping.in/closePost/place-post-id-here/place-mobile-no-here</a></p>
	</footer>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script>
	<script type="text/javascript">
		var countries = [];
		var state_cities = null;
		var states = [];
		var cities = [];
		$(function() {
			$.get("/resources/json/countries.json", function(data) {
				$("#country_filter").typeahead({
					source : data
				});
				$("#country").typeahead({
					source : data
				});
			}, 'json');
			$.get("/resources/json/state-city.json", function(data) {
				state_cities = data;
				$.each(data, function(key, value) {
					states.push(key);
				});
				$("#state_filter").typeahead({
					source : states
				});
				$("#state").typeahead({
					source : states
				});
			}, 'json');
		});

		$('#state_filter').change(function() {
			var state = $('#state_filter').val();
			var city_vals = state_cities[state];
			if (city_vals) {
				$("#city_filter").typeahead({
					source : city_vals
				});
			}
		});
		
		$('#state').change(function() {
			var state = $('#state').val();
			var city_vals = state_cities[state];
			if (city_vals) {
				$("#city").typeahead({
					source : city_vals
				});
			}
		});

		function toggleHelperForm() {
			if ($('#helper_form').hasClass("d-none")) {
				$('#helper_form').removeClass("d-none");
			} else {
				$('#helper_form').addClass("d-none");
			}
		}
		$('#to_collect').click(function() {
			toggleHelperForm();
			$("#helperType").val("collector");
			$('#grid_heading').html('<h2>Near Collection Center List</h2>')
			$("#helper_type_filter").val("collector");
			$('#add_detail').html("<h2>Add Collection Center</h2>");
		});
		$('#to_contribute').click(function() {
			toggleHelperForm();
			$("#helperType").val("contributor");
			$('#grid_heading').html('<h2>Near Contributors List</h2>');
			$("#helper_type_filter").val("contributor");
			$('#add_detail').html("<h2>Add Contribution</h2>");
		});

		function getFilterParams() {
			var params = {};
			params.status = 'Active';
			if ($('#help_for_filter').val() != '') {
				params.helpFor = $('#help_for_filter').val();
			}
			if ($('#helper_type_filter').val() != '') {
				params.helperType = $('#helper_type_filter').val();
			}
			if ($('#country_filter').val() != '') {
				params.countryName = $('#country_filter').val();
			}
			if ($('#state_filter').val() != '') {
				params.stateName = $('#state_filter').val();
			}
			if ($('#city_filter').val() != '') {
				params.cityName = $('#city_filter').val();
			}
			if ($('#area_filter').val() != '') {
				params.areaName = $('#area_filter').val();
			}
			return params;
		}

		$('#search')
				.click(
						function() {
							var header = '<tr>	<th width="5">Id</th> <th width="25">Name</th> <th width="50">Description</th> <th width="20">Posted Date</th> </tr>';
							$
									.ajax({
										url : '/getHelpers/0',
										method : 'GET',
										data : getFilterParams(),
										dataType : 'json',
										contentType : 'application/json; charset=utf-8',
										success : function(data) {
											if (data != null && data.length > 0) {
												$('#start').val(10)
												var str = getGridData(data);
												$('#help_details').html(
														header + str);
												$('#reached').val("no");
											} else {
												$('#help_details').html(header);
												$('#reached').val("yes");
											}
										}
									});
						});

		function getGridData(data) {
			var str = "";
			for (var i = 0; i < data.length; i++) {
				str = str + "<tr>" + "<td>" + data[i].id + "</td>"
						+ "<td> Name : " + data[i].helperName
						+ "<br/> Contact No :" + data[i].contactNo
						+ "<br/> City :" + data[i].cityName
						+ "<br/> Area :" + data[i].areaName
						+ "</td>"
						+ "<td style='white-space: pre-line;'>"
						+ data[i].description + "</td>" + "<td>"
						+ (new Date(data[i].createdTime)).toLocaleString()
						+ "</td>" + "</tr>";
			}
			return str;
		}

		$(window).scroll(function() {
			if ($(window).scrollTop() > $('#help_details').height() - 200) {
				var start = $('#start').val();
				if ($('#reached').val() == "no") {
					$('#reached').val("yes");
					$.ajax({
						url : '/getHelpers/' + start,
						method : 'GET',
						data : getFilterParams(),
						dataType : 'json',
						contentType : 'application/json; charset=utf-8',
						success : function(data) {
							if (data != null && data.length > 0) {
								var st = parseInt((start)) + parseInt((10));
								$('#start').val(st)
								var str = getGridData(data);
								$('#help_details').append(str);
								$('#reached').val("no");
							} else {
								$('#reached').val("yes");
							}
						}
					});
				}
			}
		});
	</script>
</body>
</html>
