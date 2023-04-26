@extends('layouts.admin')
@section('styles')
    <link href="{{ asset('css/config.css') }}" rel="stylesheet" />
@endsection
@section('content')

<div class="card" style="zoom: 0.75;">
    <div class="card-header">
        <form method="get" action="{{ route("admin.clients.create") }}" id="form_submit">
        </form>
    </div>
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

    <!-- @can('client_create')
        <div style="float:right; margin-bottom: 10px;" class="row">
            <div class="col-lg-12">
            </div> 
        </div>
    @endcan -->
    <div class="card-body">
        <div class="country-container" style="max-width:300px">
            <span class="country"><i class="fas fa-globe-europe fa-2x mb-1"></i>Country</span>
            <select name="country" {{ !$isAdmin ? 'disabled':'' }}  id="country"  id="country"   class="form-control select1">
                <option value="" {{ auth()->user()->country == '' ? 'selected' : ''}}></option>
                <option value="SPAIN" {{auth()->user()->country == 'SPAIN' ? 'selected' : ''}}>SPAIN</option>
                <option value="PORTUGAL" {{auth()->user()->country == 'PORTUGAL' ? 'selected' : ''}}>PORTUGAL</option>
                <option value="USA" {{auth()->user()->country == 'USA' ? 'selected' : ''}}>USA</option>
                <option value="CANARIAS" {{auth()->user()->country == 'CANARIAS' ? 'selected' : ''}}>CANARIAS</option>
                <option value="ALL" <?php echo $isAdmin ? 'selected' : '' ?>>ALL</option>
            </select>            
        </div>
        <div class="table-responsive">

            <div id="printbar" style="float:right"></div>
            <table class=" table table-bordered table-striped table-hover datatable datatable-Client" id="table_client">

                    <!-- <div style="float:left; margin-bottom: 10px;" class="row"> -->
                        <!-- <div class="col-lg-12"> -->
                            <!-- <a class="btn btn-success" style="float:left;margin-right:20px;" href="{{ route("admin.clients.create") }}">
                                Add Contact
                            </a> -->
                        <!-- </div> -->
                    <!-- </div> -->

                <thead id="table_client_thead">
                    <tr>
                        <th>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </th>
                        <th >
                            USER
                        </th>
                        <th >
                            ID
                        </th>
                        <th>
                            DATE
                        </th>
                        <th>
                            STATUS
                        </th>
                        <th>
                            SCORE
                        </th>
                        <th>
                            COMPANY
                        </th>
                        <th>
                            CONTACT
                        </th>
                        <th>
                            TEL.1
                        </th>
                        <th>
                            TEL.2(Whatsapp)
                        </th>
                        <th>
                            TOWN/CITY
                        </th>
                        <th>
                            AREA/STATE
                        </th>
                        <th>
                            SAMPLES
                        </th>
                        <th>
                            DISPLAY
                        </th>
                        <th>
                            PRICES
                        </th>
                        <th>
                            BRAND
                        </th>
                        <th>
                            COMMENTS
                        </th>
                        <th style="display:none">
                            COUNTRY
                        </th>
                        <th style="display:none"></th>
                    </tr>
                </thead>
                <tbody style="text-align:center">
                    @foreach($clients as $key => $client)
                        <tr data-entry-id="{{ $client->id }}">
                            <td>
                                <!-- @can('client_show')
                                    <a class="btn btn-xs btn-primary p-2" style="border-radius:50px;" href="{{ route('admin.clients.show', $client->id) }}">
                                        <i class="fa-fw fas fa-eye"></i>
                                    </a>
                                @endcan -->
                                <input type="checkbox" name="selectedId" class="selectedId" value="{{ $client->id }}" />
                               
                                @can('client_delete')
                                    <form action="{{ route('admin.clients.destroy', $client->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: none;">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <button class="btn btn-xs btn-danger p-2"  style="border-radius:50px;" type="submit">
                                            <i class="fas fa-trash-alt fa-2x text-white"></i>
                                        </button>
                                    </form>
                                @endcan

                            </td>
                            <td width="10">
                                {{ $client->assigned }}
                            </td>
                            <td width="10">
                                {{ $key + 1 }}
                            </td>
                            <td>
                                {{ $client->date ?? '' }}
                            </td>
                            <td class = "{{ str_replace(' ', '', $client->status) }}">
                                {{ $client->status ?? '' }}
                            </td>
                            <td>
                                {{ $client->score ?? ''}}
                            </td>
                            <td>
                                {{ $client->company ?? ''}}
                            </td>
                            <td>
                                {{ $client->contact ?? '' }}
                            </td>
                            <td>
                                {{ $client->tel1 ?? '' }}
                            </td>
                            <td>
                                {{ $client->tel2 ?? '' }}
                            </td>
                            <td>
                                {{ $client->town ?? '' }}
                            </td>
                            <td>
                                {{ $client->area ?? '' }}
                            </td>
                            <td>
                                {{ $client->samples ? '✔' : '' }}
                            </td>
                            <td>
                                {{ $client->display ? '✔' : '' }}
                            </td>
                            <td>
                                {{ $client->prices ? '✔' : '' }}
                            </td>
                            <td>
                                {{ $client->brand ?? '' }}
                            </td>
                            <td >
                                {{ $client->comments ?? '' }}
                            </td>
                            <td style="display:none">
                                {{ $client->country ?? '' }}
                            </td>
                            <td style="display:none"></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
<script>
// $(function () {
//   let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
// @can('client_delete')
//   let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
//   let deleteButton = {
//     text: deleteButtonTrans,
//     url: "{{ route('admin.clients.massDestroy') }}",
//     className: 'btn-danger',
//     action: function (e, dt, node, config) {
//       var ids = $.map(dt.rows({ selected: true }).nodes(), function (entry) {
//           return $(entry).data('entry-id')
//       });

//       if (ids.length === 0) {
//         alert('{{ trans('global.datatables.zero_selected') }}')

//         return
//       }

//       if (confirm('{{ trans('global.areYouSure') }}')) {
//         $.ajax({
//           headers: {'x-csrf-token': _token},
//           method: 'POST',
//           url: config.url,
//           data: { ids: ids, _method: 'DELETE' }})
//           .done(function () { location.reload() })
//       }
//     }
//   }
//   dtButtons.push(deleteButton)
// @endcan

//   $.extend(true, $.fn.dataTable.defaults, {
//     order: [[ 1, 'asc' ]],
//     pageLength: 10,
//   });
//   $('.datatable-Client:not(.ajaxTable)').DataTable({ buttons: dtButtons })
//     $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
//         $($.fn.dataTable.tables(true)).DataTable()
//             .columns.adjust();
//     });
// })

// $(document).ready(function() {
//     var cnt = 0;
//     // $('#table_client thead tr').clone(true).appendTo( '#table_client thead' );
//     $('#table_client').DataTable( {
//         initComplete: function () {
//             this.api().columns().every( function () {
//                 if(cnt != 0 && cnt != 14) {
//                     console.log(cnt);
//                     var column = this;
//                     if(cnt == 1)
//                         var select = $('<select "><option value=""></option></select>');
//                     else var select = $('<select id="select_id"><option value=""></option></select>');
//                         select.appendTo( $(column.header()) )
//                         .on( 'change', function () {
//                             var val = $.fn.dataTable.util.escapeRegex(
//                                 $(this).val()
//                             );
    
//                             column
//                                 .search( val ? '^'+val+'$' : '', true, false )
//                                 .draw();
//                         } );
    
//                     column.data().unique().sort().each( function ( d, j ) {
//                         select.append( '<option value="'+d+'">'+d+'</option>' )
//                     } );
//                 }
//                 cnt++;
//             });
//         },
//         orderCellsTop: true,
//         fixedHeader: true
//     } );
//     $('#select_id').parent().trigger('click');
//     // alert($('#select_id').parten());
//     $('#table_client').DataTable( {
//         orderCellsTop: true,
//         fixedHeader: true
//     } );
// } );

$(document).ready(function() {
    let country = $('select#country').val();
    if (country == "" || country =="ALL") country = "";
    console.log("asdfasdf", country);
    $('select#country').on('change', ()=>{ 
        let country = $('select#country').val();
        if (country == "" || country =="ALL") country = "";
        // console.log("adsfasdf", $('#table_client_thead input.COUNTRY'), $('select#country').val());
        $('#table_client_thead input.COUNTRY').val(country);
        $('#table_client_thead  input.COUNTRY').trigger("change");
    })
    setTimeout(()=>{
        $('#table_client_thead input.COUNTRY').val(country);
        // console.log("ddd", $('select#country').val(), $('#table_client_thead input.COUNTRY'))
        $('#table_client_thead input.COUNTRY').trigger("change");
    }, 1500);
    // Setup - add a text input to each footer cell
    $('#table_client thead tr').clone(true).appendTo( '#table_client thead' );
    $('#table_client thead tr:eq(1) th').each( function (i) {
        
        if(i != 0 ) {
            var title = $(this)[0].innerText;
            pixel_arr = [0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100];
            pixel = pixel_arr[i];
            $(this).html( '<input style= "width:'+pixel+'%" type="text" class="'+ title + '" placeholder="'+title+'" />' );
            $( 'input', this ).on( 'keyup change', function () {
                if ( table.column(i).search() !== this.value ) {
                    table
                        .column(i)
                        .search( this.value )
                        .draw();
                }
            } );
        }
    } );
 
    var table = $('#table_client').DataTable( {
        orderCellsTop: true,
        fixedHeader: {
            footer: true
        },
        "lengthMenu": [[10, 25, 50, 250], [10, 25, 50, 250]],
        pageLength: 250,
        lengthMenu: [0, 5, 10, 20, 50, 100, 250, 500],
        "selectableRows": false,
        "createdRow": function (row, data) {
            $(row).find("td:first").removeClass(' select-checkbox');
        },
        buttons: [
            {
                text: '<i class="fas fa-user-plus fa-2x mb-1 text-success"></i>Add',
                action: function ( e, dt, node, config ) {
                    $("#form_submit").submit();
                },
                className: 'btn buttons-collection buttons-colvis btn_add_contact'
            },
            {
                extend : "copyHtml5",
                text : '<i class = "fas fa-copy fa-2x mb-1 "></i>Copy',
                titleAttr : 'Copy'
            },
            {
                extend : "pdfHtml5",
                text : '<i class = "fas fa-file-pdf fa-2x mb-1 text-danger"></i>To PDF',
                titleAttr : 'ToPDF'
            },
            {
                extend : "csvHtml5",
                text : '<i class = "fas fa-file-csv fa-2x mb-1 "></i>To CSV',
                titleAttr : 'ToCSV'
            },
            {
                extend : "excelHtml5",
                text : '<i class = "fas fa-file-excel fa-2x mb-1 text-success"></i>To Excel',
                titleAttr : 'ToExcel'
            },
            {
                text: '<i class="fas fa-pencil-alt fa-1x bg-success p-2"></i>Edit',
                action: function ( e, dt, node, config ) {
                    let value = $('.selectedId:checked')[0]?.value;
                    if(!value || value == 0) value = 0;
                    if (value > 0) location.href = `/admin/clients/${value}/edit`;
                },
                className: 'btn buttons-collection buttons-colvis btn_edit_contact'
            },
            {
                text: '<i class="fas fa-trash-alt fa-1x text-white bg-danger p-2"></i>Delete',
                action: function ( e, dt, node, config ) {
                    let value = $('.selectedId:checked')[0]?.value;
                    if(!value || value == 0) value = 0;
                    if(value > 0) {
                        $('.selectedId:checked + form')[0].action = `/admin/clients/${value}`;
                        console.log("asdf", $('.selectedId:checked:first-of-type + form button'))
                        $('.selectedId:checked:first-of-type + form button').trigger('click');
                    }
                },
                className: 'btn buttons-collection buttons-colvis btn_delete_contact'
            }
            // 'print',
            // 'colvis',
        ]
        // buttons: [
        //     'colvis',
        //     'copyHtml5',
        //     'csvHtml5',
        //     'excelHtml5',
        //     'pdfHtml5',
        //     'print',
        //     {
        //           name: 'Add',
        //           extend: '',
        //           text: '<a class="fa fa-file-excel-o btn btn-success"></a>',
        //           titleAttr: 'Excel',
        //           exportOptions: {
        //               columns: [1, 2, 3, 4]
        //           }
        //     },
        // ]
    } );
    $('.dt-buttons').append('<h1>sss</h1>');
    /****************************************************** */
} );
//     // // Setup - add a text input to each footer cell
//     // $('#table_client thead tr').clone(true).appendTo( '#table_client thead' );
//     // $('#table_client thead tr:eq(1) th').each( function (i) {
//     //     if(i != 0) {
//     //         var title = $(this).text();
//     //         var headid = $('<select type="text" placeholder="Search '+title+'" />');
          
//     //         $(this).html( '<select type="text" placeholder="Search '+title+'" id="select_'+i+'" /><option value=""></option></select>' );
//     //         var select_id = "#select_"+i;
//     //         var select = $(select_id)
//     //             .appendTo( headid ) 
//     //             .on( 'change', function () {
//     //                 var val = $.fn.dataTable.util.escapeRegex(
//     //                     $(this).val()
//     //                 );

//     //                 table.column
//     //                     .search( val ? '^'+val+'$' : '', true, false )
//     //                     .draw();
//     //             } );
//     //         $( 'input', this ).on( 'keyup change', function () {
//     //             if ( table.column(i).search() !== this.value ) {
//     //                 table
//     //                     .column(i)
//     //                     .search( this.value )
//     //                     .draw();
//     //             }
//     //         } );
//     //     }
//     // } );
 
//     // var table = $('#table_client').DataTable( {
//     //     orderCellsTop: true,
//     //     fixedHeader: true
//     // } );
// } );
</script>
<style>
    .dt-buttons .btn.buttons-html5, .btn.buttons-collection.buttons-colvis.btn_add_contact, .btn.buttons-collection.buttons-colvis.btn_edit_contact, .btn.buttons-collection.buttons-colvis.btn_delete_contact  {
        background-color : transparent;
        border-color : transparent;
    }
    .btn_edit_contact i, .btn_delete_contact i { border-radius : 50px;}
    .buttons-html5 span, .btn_add_contact span, .btn_edit_contact span,.btn_delete_contact span {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }
    select[name=table_client_length] {
        font-size : 23px;
        height : 50px!important;
    }
    #table_client_filter input[type=search] {
        font-size: 20px;
        padding: 10px;
        line-height: 100%;
        height: unset;
        border-radius: 15px;
        margin-top: 5px;
        margin-right: 5px;
    }
    #table_client_filter label::before {
        background-image : url('/images/search.svg') center;
        width : 40px;
        height:40px;
    }
    .country-container {
        display : flex;
        width: 250px;
        position: absolute;
        right: 380px;
        margin-top: 5px;
        z-index:1;
    }
    .country-container span {
        display: flex;
        flex-direction: column;
        align-items : center;
        margin-right : 10px;
    }
    .country-container #country {
        width : 170px;
        font-size : 23px;
        padding : 10px;
        height : 45px;
    }
    .selectedId {
        width:20px;
        height : 20px;
    }
    .dataTables_scrollBody {
        max-height: calc(100vh - 70px)!important;
    }
    .content-wrapper {
        min-height : 100%!important;
    }
    #table_client_thead tr th:nth-of-type(2) {
        width: 30px!important;
        padding-left : 0!important;
        padding-right : 0!important;
        overflow : hidden;
    }
    #table_client_thead tr th:nth-of-type(13),
    #table_client_thead tr th:nth-of-type(14),
    #table_client_thead tr th:nth-of-type(15)  {
        width: 50px!important;
        padding-left : 0!important;
        padding-right : 0!important;
        overflow : hidden;
    }
    #table_client_thead tr th:nth-of-type(2):before, #table_client_thead tr th:nth-of-type(2):after ,    
    #table_client_thead tr th:nth-of-type(13):before, #table_client_thead tr th:nth-of-type(13):after ,
    #table_client_thead tr th:nth-of-type(14):before, #table_client_thead tr th:nth-of-type(14):after ,
    #table_client_thead tr th:nth-of-type(14):before, #table_client_thead tr th:nth-of-type(15):after {
        display : none!important;
    }
    tr {
        font-size : 1.15rem;
    }
    .content {
        padding-top : 5px!important;
    }
    nav.main-header, .navbar-nav .nav-link {
        padding-top: 0px!important;
        padding-bottom: 0px!important;
    }
    .navbar-nav .nav-link {
        height : 25px!important;
    }
    .card-header { 
        display : none!important;
    }
</style>    
@endsection