﻿using Microsoft.EntityFrameworkCore.Migrations;

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
                    level = table.Column<int>(nullable: false)
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
                    Date_Upload = table.Column<string>(nullable: true)
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
                name: "Discount",
                columns: table => new
                {
                    ID_Discount = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Code_Discount = table.Column<string>(maxLength: 100, nullable: false),
                    Expire = table.Column<string>(nullable: false),
                    Value = table.Column<int>(nullable: false),
                    NumberofTurn = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Discount", x => x.ID_Discount);
                });

            migrationBuilder.CreateTable(
                name: "Type",
                columns: table => new
                {
                    ID_Type = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Type_Name = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Type", x => x.ID_Type);
                });

            migrationBuilder.CreateTable(
                name: "Client",
                columns: table => new
                {
                    ID_Client = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Client_Name = table.Column<string>(maxLength: 100, nullable: false),
                    Phone = table.Column<string>(nullable: false),
                    DOB = table.Column<string>(nullable: false),
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
                    DOB = table.Column<string>(nullable: false),
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
                name: "Product",
                columns: table => new
                {
                    ID_Product = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Product_Name = table.Column<string>(maxLength: 100, nullable: false),
                    Customers = table.Column<int>(nullable: false),
                    Price_Product = table.Column<double>(nullable: false),
                    Price_Sale = table.Column<double>(nullable: false),
                    ID_Brand = table.Column<int>(nullable: false),
                    ID_Type = table.Column<int>(nullable: false)
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
                        name: "FK_Product_Type_ID_Type",
                        column: x => x.ID_Type,
                        principalTable: "Type",
                        principalColumn: "ID_Type",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Order",
                columns: table => new
                {
                    ID_Order = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TotalMoney = table.Column<double>(nullable: false),
                    Date = table.Column<int>(nullable: false),
                    ID_Client = table.Column<int>(nullable: false),
                    Cashier = table.Column<int>(nullable: false),
                    ID_Employee = table.Column<int>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Order", x => x.ID_Order);
                    table.ForeignKey(
                        name: "FK_Order_Client_ID_Client",
                        column: x => x.ID_Client,
                        principalTable: "Client",
                        principalColumn: "ID_Client",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Order_Employee_ID_Employee",
                        column: x => x.ID_Employee,
                        principalTable: "Employee",
                        principalColumn: "ID_Employee",
                        onDelete: ReferentialAction.Restrict);
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
                    ID_Color_Product = table.Column<int>(nullable: false),
                    ProductID_Product = table.Column<int>(nullable: true)
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
                    table.ForeignKey(
                        name: "FK_Img_Product_Product_ProductID_Product",
                        column: x => x.ProductID_Product,
                        principalTable: "Product",
                        principalColumn: "ID_Product",
                        onDelete: ReferentialAction.Restrict);
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
                name: "IX_Img_Product_ProductID_Product",
                table: "Img_Product",
                column: "ProductID_Product");

            migrationBuilder.CreateIndex(
                name: "IX_Order_ID_Client",
                table: "Order",
                column: "ID_Client");

            migrationBuilder.CreateIndex(
                name: "IX_Order_ID_Employee",
                table: "Order",
                column: "ID_Employee");

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
                name: "IX_Product_ID_Type",
                table: "Product",
                column: "ID_Type");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Banner");

            migrationBuilder.DropTable(
                name: "Discount");

            migrationBuilder.DropTable(
                name: "Img_Product");

            migrationBuilder.DropTable(
                name: "OrderDetail");

            migrationBuilder.DropTable(
                name: "Color_Product");

            migrationBuilder.DropTable(
                name: "Order");

            migrationBuilder.DropTable(
                name: "Product");

            migrationBuilder.DropTable(
                name: "Client");

            migrationBuilder.DropTable(
                name: "Employee");

            migrationBuilder.DropTable(
                name: "Brand");

            migrationBuilder.DropTable(
                name: "Type");

            migrationBuilder.DropTable(
                name: "Account");
        }
    }
}