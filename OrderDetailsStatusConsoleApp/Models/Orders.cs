// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace OrderDetailsStatusConsoleApp.Models
{
    public partial class Orders
    {
        public Orders()
        {
            OrderDetails = new HashSet<OrderDetails>();
        }

        public int OrderId { get; set; }
        public int? CustomerIdentifier { get; set; }
        public DateTime? OrderDate { get; set; }
        public DateTime? ShippedDate { get; set; }
        public decimal? Freight { get; set; }
        public string ShipAddress { get; set; }
        public string ShipCity { get; set; }
        public string ShipPostalCode { get; set; }
        public string ShipCountry { get; set; }
        public bool? IsDeleted { get; set; }

        public virtual Customers CustomerIdentifierNavigation { get; set; }
        public virtual ICollection<OrderDetails> OrderDetails { get; set; }
    }
}