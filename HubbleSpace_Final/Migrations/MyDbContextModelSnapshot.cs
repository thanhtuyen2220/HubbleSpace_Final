﻿// <auto-generated />
using System;
using HubbleSpace_Final.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace HubbleSpace_Final.Migrations
{
    [DbContext(typeof(MyDbContext))]
    partial class MyDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.10")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("HubbleSpace_Final.Entities.Account", b =>
                {
                    b.Property<int>("ID_Account")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("Date_Create")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Level")
                        .HasColumnType("int");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserName")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.HasKey("ID_Account");

                    b.ToTable("Account");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Banner", b =>
                {
                    b.Property<int>("ID_Banner")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Banner_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.Property<DateTime>("Date_Upload")
                        .HasColumnType("datetime2");

                    b.Property<string>("Photo")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID_Banner");

                    b.ToTable("Banner");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Brand", b =>
                {
                    b.Property<int>("ID_Brand")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Brand_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.HasKey("ID_Brand");

                    b.ToTable("Brand");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Category", b =>
                {
                    b.Property<int>("ID_Categorie")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Category_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.Property<string>("Object")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.HasKey("ID_Categorie");

                    b.ToTable("Category");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Client", b =>
                {
                    b.Property<int>("ID_Client")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Client_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.Property<string>("CreditCard")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("DOB")
                        .HasColumnType("datetime2");

                    b.Property<int>("Gender")
                        .HasColumnType("int");

                    b.Property<int>("ID_Account")
                        .HasColumnType("int");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID_Client");

                    b.HasIndex("ID_Account");

                    b.ToTable("Client");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Color_Product", b =>
                {
                    b.Property<int>("ID_Color_Product")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Color_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.Property<int>("ID_Product")
                        .HasColumnType("int");

                    b.Property<string>("Image")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID_Color_Product");

                    b.HasIndex("ID_Product");

                    b.ToTable("Color_Product");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Discount", b =>
                {
                    b.Property<int>("ID_Discount")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Code_Discount")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.Property<DateTime>("Expire")
                        .HasColumnType("datetime2");

                    b.Property<int>("NumberofTurns")
                        .HasColumnType("int");

                    b.Property<int>("Value")
                        .HasColumnType("int");

                    b.HasKey("ID_Discount");

                    b.ToTable("Discount");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Employee", b =>
                {
                    b.Property<int>("ID_Employee")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Citizen_ID")
                        .IsRequired()
                        .HasColumnType("nvarchar(11)")
                        .HasMaxLength(11);

                    b.Property<DateTime>("DOB")
                        .HasColumnType("datetime2");

                    b.Property<string>("Employee_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.Property<int>("Gender")
                        .HasColumnType("int");

                    b.Property<int>("ID_Account")
                        .HasColumnType("int");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("Salary")
                        .HasColumnType("float");

                    b.HasKey("ID_Employee");

                    b.HasIndex("ID_Account");

                    b.ToTable("Employee");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Img_Product", b =>
                {
                    b.Property<int>("ID_Img_Product")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ID_Color_Product")
                        .HasColumnType("int");

                    b.Property<string>("Photo")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID_Img_Product");

                    b.HasIndex("ID_Color_Product");

                    b.ToTable("Img_Product");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Order", b =>
                {
                    b.Property<int>("ID_Order")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Address")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("Date_Create")
                        .HasColumnType("datetime2");

                    b.Property<int>("ID_Account")
                        .HasColumnType("int");

                    b.Property<string>("Process")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Receiver")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("SDT")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("TotalMoney")
                        .HasColumnType("float");

                    b.HasKey("ID_Order");

                    b.HasIndex("ID_Account");

                    b.ToTable("Order");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.OrderDetail", b =>
                {
                    b.Property<int>("ID_OrderDetail")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ID_Order")
                        .HasColumnType("int");

                    b.Property<int>("ID_Product")
                        .HasColumnType("int");

                    b.Property<int>("Quantity")
                        .HasColumnType("int");

                    b.HasKey("ID_OrderDetail");

                    b.HasIndex("ID_Order");

                    b.HasIndex("ID_Product");

                    b.ToTable("OrderDetail");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Product", b =>
                {
                    b.Property<int>("ID_Product")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ID_Brand")
                        .HasColumnType("int");

                    b.Property<int>("ID_Categorie")
                        .HasColumnType("int");

                    b.Property<string>("Image")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("Price_Product")
                        .HasColumnType("float");

                    b.Property<double>("Price_Sale")
                        .HasColumnType("float");

                    b.Property<string>("Product_Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(100)")
                        .HasMaxLength(100);

                    b.HasKey("ID_Product");

                    b.HasIndex("ID_Brand");

                    b.HasIndex("ID_Categorie");

                    b.ToTable("Product");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Size", b =>
                {
                    b.Property<int>("ID_Size_Product")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ID_Color_Product")
                        .HasColumnType("int");

                    b.Property<int>("Quantity")
                        .HasColumnType("int");

                    b.Property<string>("size")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID_Size_Product");

                    b.HasIndex("ID_Color_Product");

                    b.ToTable("Size");
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Client", b =>
                {
                    b.HasOne("HubbleSpace_Final.Entities.Account", "Account")
                        .WithMany()
                        .HasForeignKey("ID_Account")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Color_Product", b =>
                {
                    b.HasOne("HubbleSpace_Final.Entities.Product", "product")
                        .WithMany("Color_Products")
                        .HasForeignKey("ID_Product")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Employee", b =>
                {
                    b.HasOne("HubbleSpace_Final.Entities.Account", "Account")
                        .WithMany()
                        .HasForeignKey("ID_Account")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Img_Product", b =>
                {
                    b.HasOne("HubbleSpace_Final.Entities.Color_Product", "color_Product")
                        .WithMany("Img_Products")
                        .HasForeignKey("ID_Color_Product")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Order", b =>
                {
                    b.HasOne("HubbleSpace_Final.Entities.Account", "account")
                        .WithMany("Orders")
                        .HasForeignKey("ID_Account")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.OrderDetail", b =>
                {
                    b.HasOne("HubbleSpace_Final.Entities.Order", "order")
                        .WithMany("OrderDetails")
                        .HasForeignKey("ID_Order")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("HubbleSpace_Final.Entities.Product", "product")
                        .WithMany()
                        .HasForeignKey("ID_Product")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Product", b =>
                {
                    b.HasOne("HubbleSpace_Final.Entities.Brand", "Brand")
                        .WithMany("Products")
                        .HasForeignKey("ID_Brand")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("HubbleSpace_Final.Entities.Category", "category")
                        .WithMany("Products")
                        .HasForeignKey("ID_Categorie")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("HubbleSpace_Final.Entities.Size", b =>
                {
                    b.HasOne("HubbleSpace_Final.Entities.Color_Product", "color_Product")
                        .WithMany()
                        .HasForeignKey("ID_Color_Product")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
