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
        Schema::create('vehicle_products', function (Blueprint $table) {
            $table->id();
            $table->string('product_category');
            $table->foreignId('vehicle_manufacture_id')->constrained('vehicle_manufactures')->cascadeOnDelete();
            $table->foreignId('body_type_id')->nullable()->constrained('body_types')->cascadeOnDelete();
            $table->string('number_of_gears')->nullable();
            $table->string('loading_capacity')->nullable();
            $table->string('number_of_wheels')->nullable();
            $table->string('number_of_doors')->nullable();
            $table->string('drive_system')->nullable();
            $table->string('transmission')->nullable();
            $table->foreignId('vehicle_model_id')->constrained('vehicle_models')->cascadeOnDelete();
            $table->string('fuel_type')->nullable();
            $table->foreignId('model_origin_id')->nullable()->constrained('model_origins')->cascadeOnDelete();
            $table->foreignId('chassis_code_id')->nullable()->constrained('chassis_codes')->cascadeOnDelete();
            $table->foreignId('displacement_engine_cc_id')->nullable()->constrained('displacement_engine_ccs')->cascadeOnDelete();
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
        Schema::dropIfExists('vehicle_products');
    }
};
