module SearchesHelper
  def link_to_work(work)
    composer = work.composer.composer_name
    link_to "#{composer}: #{work.work_name}", work_path(work)
  end
end
