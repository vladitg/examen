using System;

namespace examen_algoritmos_Vladimir
{
    public class Desafio
    {
        public void index()
        {
            string[] categorias = { "Claridad del problema", "Originalidad", "Dificultad" };
            int[] calificacionesAlice = new int[3];
            int[] calificacionesBob = new int[3];
            int[] puntaje = { 0,0 };

            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("\nCATEGORÍA - " + categorias[i]);

                calificacionesAlice[i] = ObtenerCal("Alice");
                calificacionesBob[i] = ObtenerCal("Bob");
            }

            for(int i = 0; i < 3; i++)
            {
                if (calificacionesAlice[i] > calificacionesBob[i])
                {
                    puntaje[0]++;
                }
                else if (calificacionesAlice[i] < calificacionesBob[i])
                {
                    puntaje[1]++;
                }
            }

            Console.WriteLine("\nPuntos Alice: " + puntaje[0]);
            Console.WriteLine("Puntos Bob: " + puntaje[1]);

            Console.Write("Presiona alguna tecla para cerrar la app...");
            Console.ReadKey();
        }

        static int ObtenerCal(string nombre)
        {
            bool flag = false;
            int cal = 0;

            while (flag == false)
            {
                Console.WriteLine("Ingrese la calificación de "  + nombre);
                cal = Convert.ToInt32(Console.ReadLine());
                if (cal >= 1 && cal <= 100)
                {
                    flag = true;
                }
                else
                {
                    Console.WriteLine("Calificación no válida\n");
                }
            }
            Console.WriteLine();

            return cal;
        }
    }
}