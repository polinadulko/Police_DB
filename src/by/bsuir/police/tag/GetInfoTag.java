package by.bsuir.police.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * The type Get info tag.
 */
public class GetInfoTag extends TagSupport {
    public int doStartTag() throws JspException {
        String str = "By Evgeniy Schipunov, 2018 | BSUIR";
        try {
            JspWriter out = pageContext.getOut();
            out.write(str);
        } catch (IOException e) {
            throw new JspException(e.getMessage());
        }
        return SKIP_BODY;
    }

}

