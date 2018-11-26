package ca.mydemo.postfunding.dao;


import ca.mydemo.postfunding.domain.Client;
import ca.mydemo.postfunding.domain.Opportunity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BizMapper {
    List<Client> loadAllBiz();
    Client getClient(int bizId);
    List<Opportunity> loadOpportunity(int bizId);
}
