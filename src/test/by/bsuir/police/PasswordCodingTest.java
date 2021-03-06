package test.by.bsuir.police;

import by.bsuir.police.coding.PasswordCode;

import org.testng.Assert;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

/**
 * The type Password coding test.
 */
public class PasswordCodingTest {

    /**
     * Test encode md 5.
     *
     * @param actual       the actual
     * @param beforeEncode the before encode
     */
    @Test(dataProvider = "testEncodeMD5Data")
    public void testEncodeMD5(String actual, String beforeEncode) {
        String expected = PasswordCode.encode(beforeEncode);
        Assert.assertEquals(actual, expected);
    }

    /**
     * Test encode md 5 data object [ ] [ ].
     *
     * @return the object [ ] [ ]
     */
    @DataProvider(name = "testEncodeMD5Data")
    public Object[][] testEncodeMD5Data() {
        return new Object[][]{
                {"A14DD509224F6359CAEED0E0017B3AFA", "123krgfr"},
                {"0905D21EAB94F3D6D1814007B89B7FE8", "superPassword34"},
                {"EE95A16D763AB0D26EE62C53056DF928", "parol"},
                {"CAF1A3DFB505FFED0D024130F58C5CFA", "321"},
                {"202CB962AC59075B964B07152D234B70", "123"},
        };
    }

}
