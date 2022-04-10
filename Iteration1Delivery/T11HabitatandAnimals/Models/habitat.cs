using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace T11HabitatandAnimals.Models
{
    public partial class habitat : DbContext
    {
        public habitat()
            : base("name=habitat")
        {
        }

        public virtual DbSet<threatened_animal_habitat_vic> threatened_animal_habitat_vic { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
