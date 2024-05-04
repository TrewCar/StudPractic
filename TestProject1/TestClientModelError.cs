using aspnet.Controllers;
using aspnet.Models;
namespace TestProject1
{
    [TestClass]
    public class TestCleintError
    {
        [TestMethod]
        public void ClientByIdError()
        {
            ClientModel model = new ClientModel();
            var user = model.GetClientBuyID(-1)[0];
        }

        [TestMethod]
        public void ClientByIdErrorTwo()
        {
            ClientModel model = new ClientModel();
            var user = model.GetClientBuyID(-1)[1];
        }

        [TestMethod]
        public void ClientGetMedCardError()
        {
            ClientModel model = new ClientModel();
            var user = model.GetInfoMedCardByUser(101)[0];
        }
    }
}