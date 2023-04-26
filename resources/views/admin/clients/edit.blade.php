@extends('layouts.admin')
@section('content')

<?php 
    $user = auth()->user();
    $country = $user->country;
    $isAdmin = false;
    foreach($user->roles as  $role) {
        if($user->id == $role->pivot->user_id) {
            if ($role->pivot->role_id == "1") $isAdmin = true;
        }
    }
?>
<div class="card">
    <div class="card-header">
        <h2 class="mx-4 pl-5 fa-2x">
            <i class="fas fa-pencil-alt fa-1x bg-success text-white p-2" style="border-radius:60px;"></i>&nbsp;Edit Contact
        </h2>
    </div>

    <div class="card-body mx-5 px-5">
        <form action="{{ route("admin.clients.update", [$client->id]) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="row justify-content-between">
                <div class="col-md-5 form-group {{ $errors->has('country') ? 'has-error' : '' }}">
                    <div class="row">                     
                        <label class="col-sm-4" for="country">COUNTRY</label>
                        <div class="col-sm-8">
                            @if (!$isAdmin)  
                                <input type="hidden" name = "country" value="{{ $country }}">
                            @endif
                            <select name="country" {{ !$isAdmin ? 'disabled':'' }}  id="country" class="form-control select1">
                                <option value="" {{$client->country == '' ? 'selected' : ''}}></option>
                                <option value="SPAIN" {{$client->country == 'SPAIN' || $country == 'SPAIN' ? 'selected' : ''}}>SPAIN</option>
                                <option value="PORTUGAL" {{$client->country == 'PORTUGAL' || $country == 'PORTUGAL'  ? 'selected' : ''}}>PORTUGAL</option>
                                <option value="USA" {{$client->country == 'USA' || $country == 'USA'  ? 'selected' : ''}}>USA</option>
                                <option value="CANARIAS" {{$client->country == 'CANARIAS' || $country == 'CANARIAS'  ? 'selected' : ''}}>CANARIAS</option>
                            </select>
                            @if($errors->has('country'))
                                <p class="help-block">
                                    {{ $errors->first('country') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 form-group {{ $errors->has('assigned') ? 'has-error' : '' }}">
                    <div class="row">                      
                        <label class="col-sm-4" for="assigned">Assigned</label>
                        <div class="col-sm-8">
                            <select name="assigned" id="assigned" class="form-control select1 ">
                                @foreach($users as $user)
                                    @if ($user->country == $country && !$isAdmin)
                                        <option country="{{$user->country}}" 
                                            value="{{ $user->id }}" 
                                            {{$client->assigned == $user->id ? 'selected' : ''}}
                                        >
                                            {{ $user->email }}
                                        </option>
                                    @endif
                                    @if ($isAdmin)                                    
                                        <option  country="{{$user->country}}" 
                                            value="{{ $user->id }}"
                                            {{$client->assigned == $user->id ? 'selected' : ''}}
                                        >
                                            {{ $user->email }}
                                        </option>
                                    @endif
                                @endforeach
                            </select>
                            @if($errors->has('assigned'))
                                <p class="help-block">
                                    {{ $errors->first('assigned') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-md-5 form-group {{ $errors->has('id') ? 'has-error' : '' }}">
                    <div class="row">                       
                        <label class="col-sm-4" for="id">ID.</label>
                        <div class="col-sm-8">
                            <input type="text" id="id" disabled name="id" class="form-control id " value="{{ old('id', isset($client) ? $client->id : '') }}" >
                            @if($errors->has('id'))
                                <p class="help-block">
                                    {{ $errors->first('id') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 form-group {{ $errors->has('date') ? 'has-error' : '' }}">
                    <div class="row">  
                        <label for="date" class="col-sm-4">Date</label>
                        <div class="col-sm-8">
                            <input type="text" id="date" name="date" class="form-control date" value="{{ old('date', isset($client) ? $client->date : '') }}" >
                            @if($errors->has('date'))
                                <p class="help-block">
                                    {{ $errors->first('date') }}
                                </p>
                            @endif
                            <p class="helper-block">
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-md-5 form-group {{ $errors->has('company') ? 'has-error' : '' }}">
                    <div class="row">                       
                        <label class="col-sm-4" for="company">Company</label>
                        <div class="col-sm-8">
                            <input type="text" id="company" name="company" class="form-control company" value="{{ old('company', isset($client) ? $client->company : '') }}" >
                            @if($errors->has('company'))
                                <p class="help-block">
                                    {{ $errors->first('company') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 form-group {{ $errors->has('tel1') ? 'has-error' : '' }}">
                    <div class="row">                      
                        <label class="col-sm-4" for="tel1">Tel.1</label>
                        <div class="col-sm-8">
                            <input type="text" id="tel1" 
                                name="tel1" class="form-control tel1 " 
                                value="{{ old('tel1', isset($client) ? $client->tel1 : '') }}" 
                                placeholder = "format : '123 456 789'"
                                pattern="^(\+1)?(\x20)?([0-9]{3})\x20([0-9]{3})\x20([0-9]{3})$"
                                title = "Inputing format : '123 456 789'">
                            @if($errors->has('tel1'))
                                <p class="help-block">
                                    {{ $errors->first('tel1') }}
                                </p>
                            @endif
                            <p class="helper-block">                          
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-md-5 form-group {{ $errors->has('contact') ? 'has-error' : '' }}">
                    <div class="row">                     
                        <label class="col-sm-4" for="contact">Contact</label>
                        <div class="col-sm-8">
                            <input type="text" id="contact" name="contact" class="form-control contact " value="{{ old('contact', isset($client) ? $client->contact : '') }}" >
                            @if($errors->has('contact'))
                                <p class="help-block">
                                    {{ $errors->first('contact') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 form-group {{ $errors->has('tel2') ? 'has-error' : '' }}">
                    <div class="row">                      
                        <label class="col-sm-4" for="tel2">Tel.2</label>
                        <div class="col-sm-8">
                            <input type="text" id="tel2" 
                                name="tel2" 
                                class="form-control tel2" 
                                value="{{ old('tel2', isset($client) ? $client->tel2 : '') }}" 
                                placeholder = "format : '123 456 789'"
                                pattern="^(\+1)?(\x20)?([0-9]{3})\x20([0-9]{3})\x20([0-9]{3})$"
                                title = "Inputing format : '123 456 789'">
                            @if($errors->has('tel2'))
                                <p class="help-block">
                                    {{ $errors->first('tel2') }}
                                </p>
                            @endif
                            <p class="helper-block">                      
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-md-5 form-group {{ $errors->has('town') ? 'has-error' : '' }}">
                    <div class="row">                    
                        <label class="col-sm-4" for="town">Town</label>
                        <div class="col-sm-8">
                            <input type="text" id="town" name="town" class="form-control town" value="{{ old('town', isset($client) ? $client->town : '') }}" >
                            @if($errors->has('town'))
                                <p class="help-block">
                                    {{ $errors->first('town') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                    <div class="row">                     
                        <label class="col-sm-4" for="email">e-mail</label>
                        <div class="col-sm-8">
                            <input type="text" id="email" name="email" class="form-control email " value="{{ old('email', isset($client) ? $client->email : '') }}" >
                            @if($errors->has('email'))
                                <p class="help-block">
                                    {{ $errors->first('email') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-md-5 form-group {{ $errors->has('area') ? 'has-error' : '' }}">
                    <div class="row">                   
                        <label class="col-sm-4" for="area">Area/State</label>
                        <div class="col-sm-8">
                            <input type="text" id="area" name="area" class="form-control area " value="{{ old('area', isset($client) ? $client->area : '') }}" >
                            @if($errors->has('area'))
                                <p class="help-block">
                                    {{ $errors->first('area') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 form-group {{ $errors->has('brand') ? 'has-error' : '' }}">
                    <div class="row">                    
                        <label class="col-sm-4" for="brand">Brand</label>
                        <div class="col-sm-8">
                            <input type="text" id="brand" name="brand" class="form-control brand " value="{{ old('brand', isset($client) ? $client->brand : '') }}" >
                            @if($errors->has('brand'))
                                <p class="help-block">
                                    {{ $errors->first('brand') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 form-group {{ $errors->has('status') ? 'has-error' : '' }}">
                    <div class="row">                       
                        <label class="col-sm-4" for="status">STATUS</label>
                        <div class="col-sm-8">
                            <select name="status" id="status" class="form-control select1 ">
                                <option value="" {{$client->status == '' ? 'selected' : ''}}></option>
                                <option value="No contact" {{$client->status == 'No contact' ? 'selected' : ''}}>No Contact</option>
                                <option value="Call 1" {{$client->status == 'Call 1' ? 'selected' : ''}}>Call 1</option>
                                <option value="Call 2" {{$client->status == 'Call 2' ? 'selected' : ''}}>Call 2</option>
                                <option value="Call 3" {{$client->status == 'Call 3' ? 'selected' : ''}}>Call 3</option>
                                <option value="Almost" {{$client->status == 'Almost' ? 'selected' : ''}}>Almost</option>
                                <option value="Customer" {{$client->status == 'Customer' ? 'selected' : ''}}>Customer</option>
                                <option value="Not interested" {{$client->status == 'Not interested' ? 'selected' : ''}}>Not interested</option>
                                <option value="Not interesting" {{$client->status == 'Not interesting' ? 'selected' : ''}}>Not interesting</option>
                            </select>
                            @if($errors->has('country'))
                                <p class="help-block">
                                    {{ $errors->first('country') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 form-group {{ $errors->has('rank') ? 'has-error' : '' }}">
                    <div class="row">                       
                        <label class="col-sm-4" for="score">Rank</label>
                        <div class="col-sm-8">
                            <select name="score" id="score" class="form-control select1 ">
                                <option value=""></option>
                                <option value="F" {{$client->score == "F" ? 'selected' : ''}}>F</option>
                                <option value="G" {{$client->score == "G" ? 'selected' : ''}}>G</option>
                                <option value="P" {{$client->score == "P" ? 'selected' : ''}}>P</option>
                                <option value="L" {{$client->score == "L" ? 'selected' : ''}}>L</option>
                            </select>
                            @if($errors->has('score'))
                                <p class="help-block">
                                    {{ $errors->first('score') }}
                                </p>
                            @endif
                            <p class="helper-block">                        
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row pt-4">
                <div class="col-sm-4 form-group">
                    <label for="samples">/Samples &nbsp; &nbsp;</label>
                    <label class="radio-inline">
                        <input type="radio" name="samples" value="1"  {{$client->samples == 1 ? 'checked' : ''}}>Yes &nbsp;
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="samples" value="0"  {{$client->samples !== 1 ? 'checked' : ''}}>No &nbsp;
                    </label>
                </div>
                <div class="col-sm-4 form-group">
                    <label for="prices">/Price &nbsp; &nbsp;</label>
                    <label class="radio-inline">
                        <input type="radio" name="prices" value="1"  {{$client->price == 1 ? 'checked' : ''}}>Yes &nbsp;
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="prices" value="0"  {{$client->price !== 1 ? 'checked' : ''}}>No &nbsp;
                    </label>
                </div>
                <div class="col-sm-4 form-group">
                    <label for="display">/Display &nbsp; &nbsp;</label>
                    <label class="radio-inline">
                        <input type="radio" name="display" value="1"  {{$client->display == 1 ? 'checked' : ''}}>Yes &nbsp;
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="display" value="0"  {{$client->display !== 1 ? 'checked' : ''}}>No &nbsp;
                    </label>
                </div>
            </div>
            <div class="row pt-4">
                <div class="col-md-12 form-group {{ $errors->has('comments') ? 'has-error' : '' }} ">
                    <label for="comments">Comments</label>
                    <textarea id="comments" name="comments" rows="3" class="form-control" >{{ old('comments', isset($client) ? $client->comments : '') }}</textarea>
                    @if($errors->has('comments'))
                        <p class="help-block">
                            {{ $errors->first('comments') }}
                        </p>
                    @endif
                    <p class="helper-block">
                        
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 ">
                    <input class="btn btn-success float-right" type="submit" value="{{ trans('global.save') }}">
                </div>
            </div>
        </form>


    </div>
</div>
<script>
    document.getElementById("country").addEventListener('change', (e)=>{
        let country = e.target.value;
        elems = document.querySelectorAll("#assigned option");
        document.getElementById("assigned").value = "";
        for (let i = 0; i < elems.length; i++){
            let elem = elems[i];
            let coun = elem.getAttribute("country");
            if(coun === country) {
                elem.style.display ="unset";                
            } else {
                elem.style.display = "none";  
            }
        }

    });
</script>
<style>
    .helper-block { margin-bottom : 0px; }
</style>
@endsection