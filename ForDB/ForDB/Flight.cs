//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ForDB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Flight
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Flight()
        {
            this.Pilot = new HashSet<Pilot>();
            this.Plane = new HashSet<Plane>();
        }
    
        public int FlightNumber { get; set; }
        public System.DateTime TimeTable { get; set; }
        public string AirportName { get; set; }
        public System.TimeSpan FlightTime { get; set; }
    
        public virtual Airoport Airoport { get; set; }
        public virtual CharterFlight CharterFlight { get; set; }
        public virtual FreightFlight FreightFlight { get; set; }
        public virtual PassengersFlight PassengersFlight { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Pilot> Pilot { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Plane> Plane { get; set; }
    }
}
