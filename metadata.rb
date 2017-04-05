name 'alfresco-utils'
maintainer 'Alfresco Tooling & Automation'
maintainer_email 'marco.mancuso@alfresco.com'
license 'Apache 2.0'
description 'Installs/Configures chef-alfresco-utils'
long_description 'Installs/Configures chef-alfresco-utils'
version '0.1.0'

issues_url       'https://github.com/Alfresco/chef-alfresco-appserver/issues'
source_url       'https://github.com/Alfresco/chef-alfresco-appserver'
version          '0.1'

depends 'java', '>= 1.31.0'
depends 'yum-epel'
depends 'yum-repoforge', ">= 0.5.1"
