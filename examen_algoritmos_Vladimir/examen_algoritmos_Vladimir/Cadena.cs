using System;

namespace examen_algoritmos_Vladimir
{
    public class Cadena
    {
        public void index()
        {
            Console.WriteLine("\nIngrese la cadena");
            string texto = Console.ReadLine();
            string cleanTexto = texto.ToLower().Replace(",", "").Replace(".", "").Replace(":", "").Replace(";", "").Replace("¿", "").Replace("?", "").Replace("—", "");

            Dictionary<string, int> contabilizador = new();

            var arrayTexto = cleanTexto.Split(" ", StringSplitOptions.RemoveEmptyEntries);

            foreach(var palabra in arrayTexto)
            {
                if (contabilizador.ContainsKey(palabra))
                {
                    contabilizador[palabra]++;
                }
                else
                {
                    contabilizador.Add(palabra, 1);
                }
            }

            var sortedDict = contabilizador.OrderByDescending(x => x.Value).ToDictionary(x => x.Key, x => x.Value);
            int lenght = sortedDict.Count;
            int count = 1;
            foreach (var word in sortedDict)
            {
                if(count == 1)
                {
                    Console.Write("\n{\""+word.Key+"\":" + word.Value);
                }
                else if (count <= lenght)
                {
                    Console.Write(",\"" + word.Key + "\":" + word.Value);
                }

                if(count == lenght)
                {
                    Console.Write("}\n\n");
                }
                count++;
            }
        }
    }
}

