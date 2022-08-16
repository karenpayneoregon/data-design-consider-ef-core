﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore;
using OrderDetailsStatusConsoleApp.Data;
using OrderDetailsStatusConsoleApp.Models;
using System;

namespace OrderDetailsStatusConsoleApp.Data.Configurations
{
    public partial class ProductsConfiguration : IEntityTypeConfiguration<Products>
    {
        public void Configure(EntityTypeBuilder<Products> entity)
        {
            entity.HasKey(e => e.ProductId);

            entity.Property(e => e.ProductId)
                .HasColumnName("ProductID")
                .HasComment("This is the primary key for a single product");

            entity.Property(e => e.ProductName)
                .IsRequired()
                .HasMaxLength(40)
                .HasComment("This is the product name of the product");

            entity.Property(e => e.UnitPrice).HasColumnType("money");

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<Products> entity);
    }
}