name 'alfresco-utils'
maintainer 'Alfresco Tooling & Automation'
maintainer_email 'marco.mancuso@alfresco.com'
license 'Apache 2.0'
description 'Installs/Configures chef-alfresco-utils'
long_description 'Installs/Configures chef-alfresco-utils'
version '1.0'
chef_version '~> 12'
supports 'centos', '>= 7.0'

issues_url       'https://github.com/Alfresco/chef-alfresco-utils/issues'
source_url       'https://github.com/Alfresco/chef-alfresco-utils'

depends 'java', '>= 1.31.0'
depends 'yum-epel'
depends 'yum-repoforge', '>= 0.5.1'
