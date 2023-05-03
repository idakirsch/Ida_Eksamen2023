using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Repository;
using IO;

namespace UnitTest
{
    [TestClass]
    public class UnitTest1
    {
        ClassRegEX regex = new ClassRegEX();

        // TestContext er VIGTIG! Og skal skrives med stort T, ellers kan DataSource ikke finde dataen
        private TestContext _testContext;
        public TestContext TestContext
        {
            get { return _testContext; }
            set { _testContext = value; }
        }

        //[TestMethod]
        //public void ValutaKurserUdregningDKK()
        //{
        //    // Arrange
        //    decimal DKK = 67.8m;
        //    decimal USD = 10m;
        //    decimal rate = 6.784619000000m;

        //    //Act
        //    decimal res = USD * rate;
        //    //Assert
        //    Assert.AreEqual(res, DKK, 0.000001m);
        //}

        //[TestMethod]
        //public void ValutaKurserUdregningEUR()
        //{
        //    // Arrange
        //    decimal DKK = 67.8m;
        //    decimal USD = 10m;
        //    decimal rate = 0.910301000000m;

        //    //Act
        //    decimal res = USD * rate;
        //    //Assert
        //    Assert.AreEqual(res, DKK, 0.000001m);
        //}

        //Mail validation
        [TestMethod]
        [DataSource("System.Data.SqlClient", @"Data Source=(localdb)\MSSQLLocalDB; Initial Catalog=DDUT2022; 
                        Integrated Security=True", "EmailMixValidAndInvalid", DataAccessMethod.Sequential)]
        public void ValideringAfMailadresse()
        {
            //Arrange
            string Email = TestContext.DataRow["Email"].ToString();
            bool exp = Convert.ToBoolean(TestContext.DataRow["Valid"]);

            //Act
            bool res = regex.IsMailAddress(Email);
            //Assert
            Assert.AreEqual(exp, res);
        }
    }
}