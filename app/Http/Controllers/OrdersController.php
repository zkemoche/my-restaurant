<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use App\Models\Orderdetails;
use App\Models\User;
use App\Models\Menu;
use App\Http\Requests\StoreOrdersRequest;
use App\Http\Requests\UpdateOrdersRequest;

class OrdersController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orders = Orders::all();
        return $orders;
    }

    public function getOrderdetails($order_id){
        $order = Orders::find($order_id);
        //user 
        $order->user = User::find($order->user_id);
        //order details
        $order->order_details = Orderdetails::where('order_id', $order->id)->get();
        //menu
        foreach ($order->order_details as $order_detail){
            $menu = Menu::find($order_detail->menu_id);
            $order_detail->menu_name = $menu->name;
            $order_detail->menu_price = $menu->price;
        }
        return $order;
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
    public function store(StoreOrdersRequest $request)
    {
        $order = new Orders;
        $order->user_id = $request->user_id;
        $order->order_type = $request->order_type;
        $order->order_status = $request->order_status;
        $order->order_total = $request->order_total;

        $order->save();
        return $order;
    }

    /**
     * Display the specified resource.
     */
    public function show(Orders $orders)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Orders $orders)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateOrdersRequest $request, Orders $orders)
    {
        $order = Orders::find($request->id);
        
        $order->user_id = $request->user_id;
        $order->order_type = $request->order_type;
        $order->order_status = $request->order_status;
        $order->order_total = $request->order_total;
        $order->save();
        return $order;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Orders $orders)
    {
        //
    }
}