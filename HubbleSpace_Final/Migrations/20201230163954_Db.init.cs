﻿using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace HubbleSpace_Final.Migrations
{
    public partial class Dbinit : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Account",
                columns: table => new
                {
                    ID_Account = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserName = table.Column<string>(maxLength: 100, nullable: false),
                    Password = table.Column<string>(nullable: false),
                    Email = table.Column<string>(nullable: false),
                    Level = table.Column<int>(nullable: false),
                    Date = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Account", x => x.ID_Account);
                });

            migrationBuilder.CreateTable(
                name: "Banner",
                columns: table => new
                {
                    ID_Banner = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Banner_Name = table.Column<string>(maxLength: 100, nullable: false),
                    Photo = table.Column<string>(nullable: false),
                    Date_Upload = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Banner", x => x.ID_Banner);
                });

            migrationBuilder.CreateTable(
                name: "Brand",
                columns: table => new
                {
                    ID_Brand = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Brand_Name = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Brand", x => x.ID_Brand);
                });

            migrationBuilder.CreateTable(
                name: "Category",
                columns: table => new
                {
                    ID_Categorie = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Category_Name = table.Column<string>(maxLength: 100, nullable: false),
                    Object = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Category", x => x.ID_Categorie);
                });

            migrationBuilder.CreateTable(
                name: "Discount",
                columns: table => new
                {
                    ID_Discount = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Code_Discount = table.Column<string>(maxLength: 100, nullable: false),
                    Expire = table.Column<DateTime>(nullable: false),
                    Value = table.Column<int>(nullable: false),
                    NumberofTurns = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Discount", x => x.ID_Discount);
                });

            migrationBuilder.CreateTable(
                name: "Client",
                columns: table => new
                {
                    ID_Client = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Client_Name = table.Column<string>(maxLength: 100, nullable: false),
                    Phone = table.Column<string>(nullable: false),
                    DOB = table.Column<DateTime>(nullable: false),
                    Gender = table.Column<int>(nullable: false),
                    CreditCard = table.Column<string>(nullable: true),
                    ID_Account = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Client", x => x.ID_Client);
                    table.ForeignKey(
                        name: "FK_Client_Account_ID_Account",
                        column: x => x.ID_Account,
                        principalTable: "Account",
                        principalColumn: "ID_Account",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Employee",
                columns: table => new
                {
                    ID_Employee = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Employee_Name = table.Column<string>(maxLength: 100, nullable: false),
                    Phone = table.Column<string>(nullable: false),
                    DOB = table.Column<DateTime>(nullable: false),
                    Gender = table.Column<int>(nullable: false),
                    Citizen_ID = table.Column<string>(maxLength: 11, nullable: false),
                    Salary = table.Column<double>(nullable: false),
                    ID_Account = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Employee", x => x.ID_Employee);
                    table.ForeignKey(
                        name: "FK_Employee_Account_ID_Account",
                        column: x => x.ID_Account,
                        principalTable: "Account",
                        principalColumn: "ID_Account",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Order",
                columns: table => new
                {
                    ID_Order = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TotalMoney = table.Column<double>(nullable: false),
                    Date = table.Column<string>(nullable: false),
                    Address = table.Column<string>(nullable: false),
                    Receiver = table.Column<string>(nullable: false),
                    SDT = table.Column<string>(nullable: false),
                    ID_Account = table.Column<int>(nullable: false),
                    Process = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Order", x => x.ID_Order);
                    table.ForeignKey(
                        name: "FK_Order_Account_ID_Account",
                        column: x => x.ID_Account,
                        principalTable: "Account",
                        principalColumn: "ID_Account",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Product",
                columns: table => new
                {
                    ID_Product = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Product_Name = table.Column<string>(maxLength: 100, nullable: false),
                    Price_Product = table.Column<double>(nullable: false),
                    Price_Sale = table.Column<double>(nullable: false),
                    ID_Brand = table.Column<int>(nullable: false),
                    ID_Categorie = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Product", x => x.ID_Product);
                    table.ForeignKey(
                        name: "FK_Product_Brand_ID_Brand",
                        column: x => x.ID_Brand,
                        principalTable: "Brand",
                        principalColumn: "ID_Brand",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Product_Category_ID_Categorie",
                        column: x => x.ID_Categorie,
                        principalTable: "Category",
                        principalColumn: "ID_Categorie",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Color_Product",
                columns: table => new
                {
                    ID_Color_Product = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Color_Name = table.Column<string>(maxLength: 100, nullable: false),
                    ID_Product = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Color_Product", x => x.ID_Color_Product);
                    table.ForeignKey(
                        name: "FK_Color_Product_Product_ID_Product",
                        column: x => x.ID_Product,
                        principalTable: "Product",
                        principalColumn: "ID_Product",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrderDetail",
                columns: table => new
                {
                    ID_OrderDetail = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ID_Product = table.Column<int>(nullable: false),
                    Quantity = table.Column<int>(nullable: false),
                    ID_Order = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrderDetail", x => x.ID_OrderDetail);
                    table.ForeignKey(
                        name: "FK_OrderDetail_Order_ID_Order",
                        column: x => x.ID_Order,
                        principalTable: "Order",
                        principalColumn: "ID_Order",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OrderDetail_Product_ID_Product",
                        column: x => x.ID_Product,
                        principalTable: "Product",
                        principalColumn: "ID_Product",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Img_Product",
                columns: table => new
                {
                    ID_Img_Product = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Photo = table.Column<string>(nullable: false),
                    ID_Color_Product = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Img_Product", x => x.ID_Img_Product);
                    table.ForeignKey(
                        name: "FK_Img_Product_Color_Product_ID_Color_Product",
                        column: x => x.ID_Color_Product,
                        principalTable: "Color_Product",
                        principalColumn: "ID_Color_Product",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Size",
                columns: table => new
                {
                    ID_Size_Product = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    size = table.Column<string>(nullable: false),
                    Quantity = table.Column<int>(nullable: false),
                    ID_Color_Product = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Size", x => x.ID_Size_Product);
                    table.ForeignKey(
                        name: "FK_Size_Color_Product_ID_Color_Product",
                        column: x => x.ID_Color_Product,
                        principalTable: "Color_Product",
                        principalColumn: "ID_Color_Product",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Client_ID_Account",
                table: "Client",
                column: "ID_Account");

            migrationBuilder.CreateIndex(
                name: "IX_Color_Product_ID_Product",
                table: "Color_Product",
                column: "ID_Product");

            migrationBuilder.CreateIndex(
                name: "IX_Employee_ID_Account",
                table: "Employee",
                column: "ID_Account");

            migrationBuilder.CreateIndex(
                name: "IX_Img_Product_ID_Color_Product",
                table: "Img_Product",
                column: "ID_Color_Product");

            migrationBuilder.CreateIndex(
                name: "IX_Order_ID_Account",
                table: "Order",
                column: "ID_Account");

            migrationBuilder.CreateIndex(
                name: "IX_OrderDetail_ID_Order",
                table: "OrderDetail",
                column: "ID_Order");

            migrationBuilder.CreateIndex(
                name: "IX_OrderDetail_ID_Product",
                table: "OrderDetail",
                column: "ID_Product");

            migrationBuilder.CreateIndex(
                name: "IX_Product_ID_Brand",
                table: "Product",
                column: "ID_Brand");

            migrationBuilder.CreateIndex(
                name: "IX_Product_ID_Categorie",
                table: "Product",
                column: "ID_Categorie");

            migrationBuilder.CreateIndex(
                name: "IX_Size_ID_Color_Product",
                table: "Size",
                column: "ID_Color_Product");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Banner");

            migrationBuilder.DropTable(
                name: "Client");

            migrationBuilder.DropTable(
                name: "Discount");

            migrationBuilder.DropTable(
                name: "Employee");

            migrationBuilder.DropTable(
                name: "Img_Product");

            migrationBuilder.DropTable(
                name: "OrderDetail");

            migrationBuilder.DropTable(
                name: "Size");

            migrationBuilder.DropTable(
                name: "Order");

            migrationBuilder.DropTable(
                name: "Color_Product");

            migrationBuilder.DropTable(
                name: "Account");

            migrationBuilder.DropTable(
                name: "Product");

            migrationBuilder.DropTable(
                name: "Brand");

            migrationBuilder.DropTable(
                name: "Category");
        }
    }
}
