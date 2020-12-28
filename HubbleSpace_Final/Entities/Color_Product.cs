﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace HubbleSpace_Final.Entities
{
    [Table("Color_Product")]
    public class Color_Product
    {
        [Key]
        public int ID_Color_Product { get; set; }

        [Display(Name = "Màu")]
        [Required(ErrorMessage ="Không được để trống")]
        [MaxLength(100, ErrorMessage = "Không hợp lệ")]
        public string Color_Name { get; set; }

        [Display(Name = "Sản phẩm")]
        public int ID_Product { get; set; }
        [ForeignKey("ID_Product")]
        public Product product { get; set; }

        public ICollection<Img_Product> Img_Products { get; set; }
        public Color_Product()
        {
            Img_Products = new HashSet<Img_Product>();
        }

    }
}
