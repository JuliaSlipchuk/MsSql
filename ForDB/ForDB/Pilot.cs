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
    
    public partial class Pilot
    {
        public string PassportNumber { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Sex { get; set; }
        public int BirthYear { get; set; }
        public int LastMedicalView { get; set; }
        public int FlightNumb { get; set; }
    
        public virtual Flight Flight { get; set; }
    }
}
