using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contact.Class
{
   public class Contacts
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        [Unique]
        public string Email { get; set; }
        public string Name { get; set; }

        public string phone { get; set; }

        public override string ToString()
        {
            return $"{Name} - {Email} - {phone}";
        }

    }
}
