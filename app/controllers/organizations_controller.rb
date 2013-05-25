# coding: utf-8

class OrganizationsController < ApplicationController
  # GET /organizations
  # GET /organizations.json
  def index
    # TODO 0人以外の Organization を表示させる
    @organizations = Organization.all

    respond_to do |format|
      format.html # index.html.slim
      format.json { render json: @organizations }
    end
  end

  # GET /organizations/papslimoy-all
  # GET /organizations/papslimoy-all.json
  def show
    @organization = Organization.find_by_login(params[:id])
    @organizations = Organization.all
    @snippets = @organization.snippets.with_assoc.published.page(params[:page]).decorate

    respond_to do |format|
      format.html # show.html.slim
      format.json { render json: @organization }
      format.atom { render atom: @snippets }
    end
  end
end
