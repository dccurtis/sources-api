module Api
  module V1
    class ApplicationsController < ApplicationController
      include Api::V1::Mixins::DestroyMixin
      include Api::V1::Mixins::IndexMixin
      include Api::V1::Mixins::ShowMixin
      include Api::V1::Mixins::UpdateMixin

      def create
        application = Application.new(params_for_create).tap { |app| authorize(app) }
        application.save!

        raise_event("#{model}.create", application.as_json)
        render :json => application, :status => :created, :location => instance_link(application)
      end
    end
  end
end
