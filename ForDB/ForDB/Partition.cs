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
    
    public partial class Partition
    {
        public string PartName { get; set; }
        public int NumberOfEmpl { get; set; }
        public string PortA { get; set; }
    
        public virtual Airoport Airoport { get; set; }
    }
}
