using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace T11HabitatandAnimals.Models
{
    public partial class LandAnimals : DbContext
    {
        public LandAnimals()
            : base("name=LandAnimals1")
        {
        }

        public virtual DbSet<threatened_animal_vic> threatened_animal_vic { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }

        public System.Data.Entity.DbSet<T11HabitatandAnimals.Models.threatened_animal_habitat_vic> threatened_animal_habitat_vic { get; set; }
    }
}
