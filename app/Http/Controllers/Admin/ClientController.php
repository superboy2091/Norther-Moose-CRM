<?php

namespace App\Http\Controllers\Admin;

use App\Client;
use App\User;
use App\ClientStatus;
use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyClientRequest;
use App\Http\Requests\StoreClientRequest;
use App\Http\Requests\UpdateClientRequest;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Validator;

class ClientController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('client_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $clients = Client::all();

        return view('admin.clients.index', compact('clients'));
    }

    public function create()
    {
        abort_if(Gate::denies('client_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $statuses = ClientStatus::all()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');
        $users = User::all();

        return view('admin.clients.create', compact('statuses', 'users'));
    }

    public function store(StoreClientRequest $request)
    {
        if($request->tel != '' || $request->mobile != '') {
            if($request->tel != '') $value = ['tel' => 'unique:clients|max:255'];
            if($request->mobile != '') $value = ['mobile' => 'unique:clients|max:255'];
            if($request->tel != '' && $request->mobile != '') $value = [
                'tel' => 'unique:clients|max:255',
                'mobile' => 'unique:clients|max:255',
            ];
            $validator = Validator::make($request->all(), $value);

            if ($validator->fails()) {
                return redirect()->route('admin.clients.create')
                            ->withErrors($validator)
                            ->withInput();
            }
        }

        $client = Client::create($request->all());
        return redirect()->route('admin.clients.index');
    }

    public function edit(Client $client)
    {
        abort_if(Gate::denies('client_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $statuses = ClientStatus::all()->pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $client->load('status');
        $users = User::all();

        return view('admin.clients.edit', compact('statuses', 'client', 'users'));
    }

    public function update(UpdateClientRequest $request, Client $client)
    {
        $client->update($request->all());

        return redirect()->route('admin.clients.index');
    }

    public function show(Client $client)
    {
        abort_if(Gate::denies('client_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $client->load('status');

        return view('admin.clients.show', compact('client'));
    }

    public function destroy(Client $client)
    {
        abort_if(Gate::denies('client_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $client->delete();

        return back();
    }

    public function massDestroy(MassDestroyClientRequest $request)
    {
        Client::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
