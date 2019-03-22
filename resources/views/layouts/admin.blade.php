@extends('layouts.app')

@section('content')
<img src="img/logo.png" style="width: 200px; height: 200px;" id="logo">
<div>
	<form action="{{ action('UsersController@triUsers') }}" method="get">
		<input type="submit" value="Constituer les équipes">
	</form>
	<form action="{{ action('UsersController@show') }}" method="get">
		<input type="submit" value="Montrer les équipes">
	</form>
	
</div>
@endsection

