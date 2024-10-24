<?php

namespace App\Http\Controllers;

use App\Models\Orderdetails;
use App\Http\Requests\StoreOrderdetailsRequest;
use App\Http\Requests\UpdateOrderdetailsRequest;

class OrderdetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orders = Orders::all();
        return $orders;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreOrderdetailsRequest $request)
    {
        $orders = new Orders;
        $orders->user_id = $request->user_id;
        $orders->order_type = $request->order_type;
        $orders->order_status = $request->order_status;
        $orders->order_total = $request->order_total;
        

        $orders->save();
        return $orders;
        // return response()->json(['message' => 'Menu created successfully'], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Orderdetails $orderdetails)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Orderdetails $orderdetails)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateOrderdetailsRequest $request, Orderdetails $orderdetails)
    {
        $orders = Orders::find($request->id);


        $orders->user_id = $request->user_id;
        $orders->order_type = $request->order_type;
        $orders->order_status = $request->order_status;
        $orders->order_total = $request->order_total;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Orderdetails $orderdetails)
    {
        //
    }
}
