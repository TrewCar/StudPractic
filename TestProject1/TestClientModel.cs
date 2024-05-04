using aspnet.Controllers;
using aspnet.Models;
namespace TestProject1
{
    [TestClass]
    public class TestClientModel
    {
        [TestMethod]
        public void ClientByIdNormal()
        {
            ClientModel model = new ClientModel();
            var user = model.GetClientBuyID(1)[0];
        }

        [TestMethod]
        public void ClientGetMedCard()
        {
            ClientModel model = new ClientModel();
            var user = model.GetInfoMedCardByUser(1)[0];
        }
    }
}