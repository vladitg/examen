using System;
using Microsoft.VisualBasic;

namespace examen_algoritmos_Vladimir
{
    public class Program
    {
        static void Main(string[] args)
        {
            Desafio desafio = new Desafio();
            Cadena cadena = new Cadena();
            int opcion;
            bool flag = true;

            do
            {
                Console.WriteLine("MENÚ");
                Console.WriteLine("1.- Calificación de desafios");
                Console.WriteLine("2.- Palabras en una cadena");
                Console.WriteLine("3.- Salir");

                opcion = Convert.ToInt32(Console.ReadLine());
                switch (opcion)
                {
                    case 1: desafio.index(); break;
                    case 2: cadena.index(); break;
                    default: flag = false;  break;
                }
            } while (flag == true);
        }
    }
}