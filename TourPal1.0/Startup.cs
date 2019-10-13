using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TourPal1._0.Startup))]
namespace TourPal1._0
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
