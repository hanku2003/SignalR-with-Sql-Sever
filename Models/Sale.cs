namespace SignalR_SQL.Models
{
    public class Sale
    {
        public int Id { get; set; }
        public string Customer { get; set; }
        public decimal Amount { get; set; }
        public string PurchasedOn { get; set; }
    }

    public class SaleForGraph 
    {
        public string PurchasedOn { get; set; }
        public decimal Amount { get; set; }
    }
}
