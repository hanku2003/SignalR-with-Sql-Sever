﻿ namespace SignalR_SQL.Models
{
    public class Product
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Category { get; set; }

        public string Price { get; set; }
    }
    public class ProductForGraph
    {
        public string Category { get; set; }
        public int Products { get; set; }
    }
}
