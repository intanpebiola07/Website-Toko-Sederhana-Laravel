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
        Schema::create('shoppingintans', function (Blueprint $table) {
            $table->id();
            $table->string('buyer_name');
            $table->string('buyer_whatsapp');
            $table->text('buyer_address');
            $table->bigInteger('product_id');
            $table->bigInteger('qty');
            $table->bigInteger('total');
            $table->string('note');
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
        Schema::dropIfExists('shoppingintans');
    }
};
