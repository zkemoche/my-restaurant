<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use App\Http\Requests\StorePaymentRequest;
use App\Http\Requests\UpdatePaymentRequest;

class PaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $payment = Payment::all();
        return $payment;
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
    public function store(StorePaymentRequest $request)
    {
        $payment = new Orders;
        $payment->payment_type = $request->payment_type;
        $payment->amount = $request->amount;
        $payment->user_id = $request->user_id;
        $payment->payment_status = $request->payment_status;
        $payment->order_id = $request->order_id;
        

        $orders->save();
        return $orders;
        // return response()->json(['message' => 'Menu created successfully'], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Payment $payment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Payment $payment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatePaymentRequest $request, Payment $payment)
    {
        $payment = Payment::find($request->id);


        $payment->payment_type = $request->payment_type;
        $payment->amount = $request->amount;
        $payment->user_id = $request->user_id;
        $payment->payment_status = $request->payment_status;
        $payment->order_id = $request->order_id;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Payment $payment)
    {
        //
    }
}
