module Googl
  module OAuth2

    class Native

      include Googl::Utils
      include Googl::OAuth2::Utils

      def initialize(client_id, client_secret)
        self.client_id     = client_id
        self.client_secret = client_secret
      end

      def authorize_url(url)
        make_authorize_url(url)
      end

      def request_access_token(code)
        request_token(code)
      end

    end

  end
end
