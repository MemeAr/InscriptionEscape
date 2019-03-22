@extends('layouts.app')

@section('content')
<img src="img/logo.png" style="width: 200px; height: 200px;" id="logo">
<div class="container">
	@foreach ($grostab as $equipe)
	<div class="card" style="width: 18rem;">
		<div class="card-header">Equipe n° {{$equipe[0]->team}}</div>
		<ul class="list-group list-group-flush">
		@foreach ($equipe as $joueur)
			<li class="list-group-item">{{$joueur->name}}</li>
			@endforeach
		</ul>
	</div>


    
   	@endforeach
</div>
@endsection
