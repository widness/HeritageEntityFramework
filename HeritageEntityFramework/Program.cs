using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HeritageEntityFramework
{
    class Program
    {
        static void Main(string[] args)
        {
            Book b = new Book {  Description = "LEs Misérables", ISBN=5, Page=300, Price=12 }


            Model1Container context = new Model1Container();

            context.Items.Add(b);

            context.SaveChanges();

            foreach(Item i in context.Items)
                Console.WriteLine("{0}, CHF {1}", i.Description, i.Price);

            var q = from item in context.Items
                    where item is Book
                    select item;

            foreach(Book book in q)
                Console.WriteLine("{0}, CHF {1}, {2}, {3}", book.Description, book.Price, book.ISBN, book.Page);

            Console.ReadKey();
        }
    }
}
