class PhotographerRegistrationService
    def initialize(photographer_params)
        @photographer_params = photographer_params
    end

    def call
        photographer = Photographer.new(@photographer_params)
        if photographer.save
            { success: true, photographer: photographer }
        else
            { success: true, photographer: photographer.errors }
        end
    end
end