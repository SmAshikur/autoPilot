<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehicle_pre_orders', function (Blueprint $table) {
            $table->id();
            $table->integer('customer_id')->nullable();
            $table->integer('pre_order_recived_by')->nullable();
            $table->date('order_date')->nullable();
            $table->string('vehicle_category')->nullable();
            $table->foreignId('product_id')->nullable()->constrained('vehicle_products')->cascadeOnDelete();
            $table->integer('preferred_year')->nullable();
            $table->string('preferred_color')->nullable();
            $table->string('preferred_millage')->nullable();
            $table->string('preferred_grade')->nullable();
            $table->text('other_requirements')->nullable();
            $table->integer('budget')->nullable();
            $table->date('expected_delivery_date')->nullable();
            $table->integer('booking_amount')->nullable();
            $table->text('additional_information')->nullable();
            $table->foreignId('created_by')->nullable()->constrained('users')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vehicle_pre_orders');
    }
};
