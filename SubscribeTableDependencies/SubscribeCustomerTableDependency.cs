using SignalR_SQL.Hubs;
using SignalR_SQL.Models;
using TableDependency.SqlClient;

namespace SignalR_SQL.SubscribeTableDependencies
{
    public class SubscribeCustomerTableDependency : ISubscibeTableDependency
    {
        SqlTableDependency<Customer> tableDependency;
        DashboardHub dashboardHub;

        public SubscribeCustomerTableDependency(DashboardHub dashboardHub)
        {
            this.dashboardHub = dashboardHub;
        }
        public void SubscribeTableDependency(string connectionString)
        {
            tableDependency = new SqlTableDependency<Customer>(connectionString);
            tableDependency.OnChanged += TableDependency_OnChanged;
            tableDependency.OnError += TableDependency_OnError;
            tableDependency.Start();
        }
        private void TableDependency_OnChanged(object sender, TableDependency.SqlClient.Base.EventArgs.RecordChangedEventArgs<Customer> e)
        {
            if (e.ChangeType != TableDependency.SqlClient.Base.Enums.ChangeType.None)
            {
                dashboardHub.SendCustomers();
            }
        }

        private void TableDependency_OnError(object sender, TableDependency.SqlClient.Base.EventArgs.ErrorEventArgs e)
        {
            Console.WriteLine($"{nameof(Customer)} SqlTableDependency error: {e.Error.Message}");
        }
    }
}
