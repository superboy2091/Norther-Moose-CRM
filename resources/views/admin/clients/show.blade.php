@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.client.title') }}
    </div>

    <div class="card-body">
        <div class="mb-2">
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            ID
                        </th>
                        <td>
                            {{ $client->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Date
                        </th>
                        <td>
                            {{ $client->date }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Status
                        </th>
                        <td>
                            {{ $client->status }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Samples
                        </th>
                        <td>
                            {{ $client->samples }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            PriceL
                        </th>
                        <td>
                            {{ $client->pricel }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Units/day
                        </th>
                        <td>
                            {{ $client->importance }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Contact
                        </th>
                        <td>
                            {{ $client->contact }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Company
                        </th>
                        <td>
                            {{ $client->company }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Town
                        </th>
                        <td>
                            {{ $client->town }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Area
                        </th>
                        <td>
                            {{ $client->area }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Tel
                        </th>
                        <td>
                            {{ $client->tel }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Mobile
                        </th>
                        <td>
                            {{ $client->mobile }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            E-mail
                        </th>
                        <td>
                            {{ $client->email ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Web
                        </th>
                        <td>
                            {{ $client->web ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Brands
                        </th>
                        <td>
                            {{ $client->brands ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Comments
                        </th>
                        <td>
                            {{ $client->comments ?? '' }}
                        </td>
                    </tr>
                </tbody>
            </table>
            <a style="margin-top:20px;" class="btn btn-default" href="{{ url()->previous() }}">
                {{ trans('global.back_to_list') }}
            </a>
        </div>

        <nav class="mb-3">
            <div class="nav nav-tabs">

            </div>
        </nav>
        <div class="tab-content">

        </div>
    </div>
</div>
@endsection