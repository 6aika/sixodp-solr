FROM solr

COPY ckan_configs /opt/solr/server/solr/configsets/ckan_configs
USER root
RUN chown -R solr:solr /opt/solr/server/solr/configsets/ckan_configs
USER solr

CMD ["/opt/solr/bin/solr", "-f"]