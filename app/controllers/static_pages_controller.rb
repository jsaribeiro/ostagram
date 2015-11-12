#require 'worker_helper'

class StaticPagesController < ApplicationController
  include WorkerHelper
  include DebHelper
  def home
    redirect_to queue_images_path
  end

  def about
    process_image
  end

  def error

  end

  def admin_page

  end

  protected

  def process_image
    #write_log "Start"
    start_workers
  end

end
