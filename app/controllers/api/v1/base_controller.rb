class Api::V1::BaseController < ApplicationController
    # Convenience methods for serializing models:
    # option[:is_collection] = false(is a result of one model being render as json)
    def serialize_model(model, options = {})
      options[:is_collection] = false
      JSONAPI::Serializer.serialize(model, options)
    end
  
    # option[:is_collection] = true(is a result of all models being render as json)
    def serialize_models(models, options = {})
      options[:is_collection] = true
      JSONAPI::Serializer.serialize(models, options)
    end

    def serialize_model_error(model)
        JSONAPI::Serializer.serialize_errors(model)
    end
    
end