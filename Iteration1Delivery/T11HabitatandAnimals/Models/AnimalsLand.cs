using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace T11HabitatandAnimals.Models
{
    public partial class AnimalsLand : DbContext
    {
        public AnimalsLand()
            : base("name=AnimalsLand")
        {
        }

        public virtual DbSet<threatened_animal_vic> threatened_animal_vic { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
