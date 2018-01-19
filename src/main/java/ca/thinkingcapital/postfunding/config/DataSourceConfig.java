package ca.thinkingcapital.postfunding.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jndi.JndiTemplate;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

@Configuration
@EnableTransactionManagement
@MapperScan("ca.thinkingcapital.postfunding.dao")
public class DataSourceConfig
{

    Logger logger = LogManager.getLogger(this.getClass());

    @Autowired
    private Environment env;

    @Bean (destroyMethod = "close")
    public DataSource dataSource(){

        DataSource dataSource = null;
        /**
         */
        try {
            if(dataSource == null) {
                JndiTemplate jndi = new JndiTemplate();
                dataSource = jndi.lookup("java:comp/env/jdbc/tcdatav3", DataSource.class);
            }
        }
        catch ( Exception e) {
            logger.error("NamingException for java:comp/env/jdbc/tcdatav3", e);
        }

        logger.info("dataSource connection jndi done == {}", (dataSource != null) );

        return dataSource;
    }


    @Bean
    public SqlSessionFactoryBean sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setTypeAliasesPackage("ca.thinkingcapital.postfunding.domain");
        sessionFactory.setMapperLocations(
                new PathMatchingResourcePatternResolver().getResources("classpath:mybatis/mapper/*.xml"));
        return sessionFactory;
    }
        @Bean
        public DataSourceTransactionManager transactionManager() {
            return new DataSourceTransactionManager(dataSource());
        }

}
