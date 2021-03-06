package by.bsuir.police.service;

import by.bsuir.police.entity.Document;
import by.bsuir.police.exception.ServiceException;

import javax.servlet.http.Part;
import java.sql.Date;

/**
 * The interface Doc service.
 */
public interface DocService extends CommonService<Document> {
    /**
     * Add doc.
     *
     * @param statement   the statement
     * @param time        the time
     * @param reward      the reward
     * @param information the information
     * @param leadTime    the lead time
     * @param name        the name
     * @param lastName    the last name
     * @param photo       the photo
     * @throws ServiceException the service exception
     */
    void addDoc(String statement, Date time, double reward,
                String information, Date leadTime, String name, String lastName, Part photo) throws ServiceException;
}
