class Api::V1::MetricsController < Api::V1Controller
  #
  # GET /api/v1/metrics
  #
  # Various counters
  #
  def show
    @metrics = {
      total_cookbook_downloads: Cookbook.sum(:download_count),
      total_cookbook_versions: CookbookVersion.count,
      total_cookbooks: Cookbook.count,
      total_follows: CookbookFollower.count,
      total_users: User.count
    }
  end
end
