<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'price' => mt_rand(30,300),
            'photo' => "game-" . mt_rand(1,9) . ".jpg",
            'description' => $this->faker->text(),
            'categories_id' => mt_rand(14,23)
        ];
    }
}
