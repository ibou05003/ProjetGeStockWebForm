using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjetGeStockWebForm.Startup))]
namespace ProjetGeStockWebForm
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
