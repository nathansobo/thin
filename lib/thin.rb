require 'fileutils'
require 'timeout'
require 'stringio'
require 'time'
require 'forwardable'

require 'openssl'
require 'eventmachine'

require 'thin/version'
require 'thin/statuses'

module Thin
  autoload :Command,            'thin/command'
  autoload :Connection,         'thin/connection'
  autoload :Daemonizable,       'thin/daemonizing'
  autoload :Logging,            'thin/logging'
  autoload :Headers,            'thin/headers'
  autoload :Request,            'thin/request'
  autoload :Response,           'thin/response'
  autoload :Runner,             'thin/runner'
  autoload :Server,             'thin/server'
  autoload :Stats,              'thin/stats'
  autoload :WebSocket,          'thin/web_socket'

  module Backends
    autoload :Base,             'thin/backends/base'
    autoload :SwiftiplyClient,  'thin/backends/swiftiply_client'
    autoload :TcpServer,        'thin/backends/tcp_server'
    autoload :UnixServer,       'thin/backends/unix_server'
  end
  
  module Controllers
    autoload :Cluster,          'thin/controllers/cluster'
    autoload :Controller,       'thin/controllers/controller'
    autoload :Service,          'thin/controllers/service'
  end
end

require 'rack'
require 'rack/adapter/loader'

module Rack
  module Adapter
    autoload :Rails, 'rack/adapter/rails'
  end
end
