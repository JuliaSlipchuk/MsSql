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
    
    public partial class Boss
    {
        public string PassportNumber { get; set; }
        public string FirstNameBoss { get; set; }
        public string LastNameBoss { get; set; }
        public string Sex { get; set; }
        public int BirthYear { get; set; }
        public string PortName { get; set; }
    
        public virtual Airoport Airoport { get; set; }
    }
}
