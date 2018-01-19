package ca.thinkingcapital.postfunding.dao;


import ca.thinkingcapital.postfunding.domain.Client;
import ca.thinkingcapital.postfunding.domain.Opportunity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BizMapper {
    List<Client> loadAllBiz();
    Client getClient(int bizId);
    List<Opportunity> loadOpportunity(int bizId);
}
