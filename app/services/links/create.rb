module Links
  class Create
    def initialize(params)
      @params = params
    end

    def call
      Link.create(@params.merge(custom_link))
    end

    def custom_link
      { new_link: "#{SecureRandom.hex(6)}" }
    end
  end
end
