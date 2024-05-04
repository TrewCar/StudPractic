using aspnet.Controllers;
using aspnet.Models;

namespace TestProject1
{
    [TestClass]
    public class TestKoikiDragDrop
    {
        [TestMethod]
        public void TestDragDropAddRemove()
        {
            KoechModel controller = new KoechModel();
            controller.SaveComnat("123");
            controller.RemoveComnat("123");
        }
        [TestMethod]
        public void TestDragDropReplace()
        {
            KoechModel controller = new KoechModel();
            controller.SaveComnat("1233");
            controller.ReplaceComnat("1233", "1234");
            controller.RemoveComnat("1234");
        }
    }
}
