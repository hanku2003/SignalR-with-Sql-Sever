using Microsoft.AspNetCore.Mvc;

namespace SignalR_SQL.Controllers
{
    public class DashboardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
