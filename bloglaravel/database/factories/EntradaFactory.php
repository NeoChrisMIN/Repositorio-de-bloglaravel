<?php

namespace Database\Factories;

use App\Models\Categoria;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Entrada>
 */
class EntradaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'titulo' => $this->faker->sentence(6), // Generar una frase de 6 palabras para el título
            'descripcion' => $this->faker->text(200), // Generar un texto de 200 caracteres para la descripción
            'imagen' =>  "entrada/" . $this->faker->image("public/storage/entrada",640,480,null,false), // imageUrl(), // Generar una URL de imagen simulada
            'fecha' => $this->faker->dateTimeBetween('-1 year', 'now')->format('Y-m-d'), // Generar una fecha entre hace un año y hoy con formato 'YYYY-MM-DD'
            "user_id" => User::all()->random()->id,
            "categoria_id" => Categoria::all()->random()->id
        ];
    }
}
