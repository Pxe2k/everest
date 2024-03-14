<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('appartments', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->text('descritpion')->nullable();
            $table->string('plan_image');
            $table->string('floor_plan_image');
            $table->integer('quadrature');
            $table->integer('floor');
            $table->integer('entrance');
            $table->integer('rooms')->default(0);
            $table->string('deadline')->nullable();
            $table->string('metro')->nullable();
            $table->string('type')->nullable();
            $table->foreignId('city_id')->nullable()->constrained()->onDelete('set null');
            $table->foreignId('complex_id')->nullable()->constrained()->onDelete('set null');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('appartments');
    }
};
