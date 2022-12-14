// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore;
using OrderDetailsStatusConsoleApp.Data.Configurations;
using OrderDetailsStatusConsoleApp.Models;
using System;
#nullable disable

#nullable disable

namespace OrderDetailsStatusConsoleApp.Data
{
    public partial class NorthContext : DbContext
    {
        public NorthContext()
        {
        }

        public NorthContext(DbContextOptions<NorthContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Customers> Customers { get; set; }
        public virtual DbSet<OrderDetails> OrderDetails { get; set; }
        public virtual DbSet<OrderStatus> OrderStatus { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }
        public virtual DbSet<Products> Products { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=NorthWindAzure3;Integrated Security=True");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.ApplyConfiguration(new Configurations.CustomersConfiguration());
            modelBuilder.ApplyConfiguration(new Configurations.OrderDetailsConfiguration());
            modelBuilder.ApplyConfiguration(new Configurations.OrderStatusConfiguration());
            modelBuilder.ApplyConfiguration(new Configurations.OrdersConfiguration());
            modelBuilder.ApplyConfiguration(new Configurations.ProductsConfiguration());
            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
