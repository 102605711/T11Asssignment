namespace T11HabitatandAnimals.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class threatened_animal_habitat_vic
    {
        [StringLength(255)]
        public string Community { get; set; }

        [Column("EPBC Status")]
        [StringLength(255)]
        public string EPBC_Status { get; set; }

        public int id { get; set; }
    }
}
