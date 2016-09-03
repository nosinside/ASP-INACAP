using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libros
{
    public class clsLibros
    {
        // ArrayList de Libros Publico
        public static List<clsLibros> librero = new List<clsLibros>();

        // Constructor de Libros

        public clsLibros(string _isbm, string _titulo, string _autor, string _editorial){
            this.isbm = _isbm;
            this.titulo = _titulo;
            this.autor = _autor;
            this.editorial = _editorial;
            this.cantidadPrestamos = 0;
            this.cantidadGlobalPrestamos = 0;
            this.prestado = false;
            this.deteriorado = false;
            this.cantidadRestauraciones = 0;
        }

        // Métodos Libros

        public string isbm { get; set; }
        public string titulo { get; set; }
        public string autor { get; set; }
        public string editorial { get; set; }
        public int cantidadPrestamos { get; set; }
        public int cantidadGlobalPrestamos { get; set; }
        public bool prestado { get; set; }
        public bool deteriorado { get; set; }
        public int cantidadRestauraciones { get; set; }

        public string prestarLibro(string _isbm){

            string mensaje;

            if (_isbm == isbm)
            {
                if (prestado || deteriorado)
                {
                    mensaje = "Libro ya prestado i/o deteriorado";
                    
                }else{
                    
                    this.cantidadPrestamos = cantidadPrestamos + 1;
                    if (cantidadPrestamos >= 10)
                        this.prestado = true;
                    {
                        deteriorado = true;
                    }
                    mensaje = "Libro prestado exitosamente";
                }
            }else{
                mensaje = "Libro no encontrado";
            }
            return mensaje;
        }

        public void devolverLibro(string _isbm){

        }

        public void restaurarLibro(string _isbm){

        }

        //public chequearDisponibilidadLibro(string _isbm){
        //    bool disponibilidad = false;
        //
        //    return disponibilidad;
        //}

    }
}