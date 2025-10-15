using SignalR_SQL.Hubs;
using SignalR_SQL.Models;
using TableDependency.SqlClient;

namespace SignalR_SQL.SubscribeTableDependencies
{
    public class SubscribeSaleTableDependency : ISubscibeTableDependency
    {
        SqlTableDependency<Sale> tableDependency;
        DashboardHub dashboardHub;

        public SubscribeSaleTableDependency(DashboardHub dashboardHub)
        {
            this.dashboardHub = dashboardHub;
        }

        public void SubscribeTableDependency(string connectionString)
        {
            tableDependency = new SqlTableDependency<Sale>(connectionString);
            tableDependency.OnChanged += TableDependency_OnChanged;
            tableDependency.OnError += TableDependency_OnError;
            tableDependency.Start();
        }

        private void TableDependency_OnChanged(object sender, TableDependency.SqlClient.Base.EventArgs.RecordChangedEventArgs<Sale> e)
        {
            if (e.ChangeType != TableDependency.SqlClient.Base.Enums.ChangeType.None)
            {
                dashboardHub.SendSales();
            }
        }

        private void TableDependency_OnError(object sender, TableDependency.SqlClient.Base.EventArgs.ErrorEventArgs e)
        {
            Console.WriteLine($"{nameof(Sale)} SqlTableDependency error: {e.Error.Message}");
        }
    }
}