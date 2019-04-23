module PayPal
  class AccessToken
    attr_accessor :access_token, :token_type, :expires_in, :date_created

    def initialize(options)
      @access_token = options.access_token
      @token_type = options.token_type
      @expires_in = options.expires_in * 1000
      @date_created = Time.now
    end

    def isExpired
      p '*' * 50
      p '*' * 50
      p '*' * 50
      p 'AccessToken.isExpired'
      p 'Time.now > @date_created + @expires_in'
      p Time.now > @date_created + @expires_in
      p '@date_created'
      p @date_created
      p '@expires_in'
      p @expires_in

      return Time.now > @date_created + @expires_in
    end

    def authorizationString
      return "#{@token_type} #{@access_token}"
    end
  end
end
