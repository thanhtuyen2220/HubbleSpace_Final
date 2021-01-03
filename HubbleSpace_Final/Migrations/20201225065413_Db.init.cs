﻿using Microsoft.EntityFrameworkCore.Migrations;

namespace HubbleSpace_Final.Migrations
{
    public partial class Dbinit : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Brand",
                columns: table => new
                {
                    ID_Brand = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name_Brand = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Brand", x => x.ID_Brand);
                });

            migrationBuilder.CreateTable(
                name: "Type",
                columns: table => new
                {
                    ID_Type = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name_Type = table.Column<string>(maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Type", x => x.ID_Type);
                });

            migrationBuilder.CreateTable(
                name: "Product",
                columns: table => new
                {
                    ID_Product = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name_Product = table.Column<string>(maxLength: 100, nullable: false),
                    Customers = table.Column<int>(nullable: false),
                    Price_Product = table.Column<int>(nullable: false),
                    Price_Sale = table.Column<int>(nullable: false),
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
                name: "Color_Product",
                columns: table => new
                {
                    ID_Color_Product = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name_Color = table.Column<string>(maxLength: 100, nullable: false),
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
                name: "Img_Product",
                columns: table => new
                {
                    ID_Img_Product = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Photo = table.Column<string>(nullable: true),
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

            migrationBuilder.CreateIndex(
                name: "IX_Color_Product_ID_Product",
                table: "Color_Product",
                column: "ID_Product");

            migrationBuilder.CreateIndex(
                name: "IX_Img_Product_ID_Color_Product",
                table: "Img_Product",
                column: "ID_Color_Product");

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
                name: "Img_Product");

            migrationBuilder.DropTable(
                name: "Color_Product");

            migrationBuilder.DropTable(
                name: "Product");

            migrationBuilder.DropTable(
                name: "Brand");

            migrationBuilder.DropTable(
                name: "Type");
        }
    }
}