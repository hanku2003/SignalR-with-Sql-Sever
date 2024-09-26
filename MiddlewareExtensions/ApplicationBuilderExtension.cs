using SignalR_SQL.SubscribeTableDependencies;

namespace SignalR_SQL.MiddlewareExtensions
{
    public static class ApplicationBuilderExtension
    {
        public static void UseSqlTableDependency<T>(this IApplicationBuilder applicationBuilder, string connectionString) 
            where T : ISubscibeTableDependency
        {
            var serviceProvider = applicationBuilder.ApplicationServices;
            var service = serviceProvider.GetService<T>();
            service.SubscribeTableDependency(connectionString);
        }
    }
}
