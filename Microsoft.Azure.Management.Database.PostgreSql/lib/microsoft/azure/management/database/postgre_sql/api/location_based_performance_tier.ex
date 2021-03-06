# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.PostgreSql.Api.LocationBasedPerformanceTier do
  @moduledoc """
  API calls for all endpoints tagged `LocationBasedPerformanceTier`.
  """

  alias Microsoft.Azure.Management.Database.PostgreSql.Connection
  import Microsoft.Azure.Management.Database.PostgreSql.RequestBuilder


  @doc """
  List all the performance tiers at specified location in a given subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Database.PostgreSql.Connection): Connection to server
  - api_version (String.t): The API version to use for the request.
  - subscription_id (String.t): The subscription ID that identifies an Azure subscription.
  - location_name (String.t): The name of the location.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Database.PostgreSql.Model.PerformanceTierListResult{}} on success
  {:error, info} on failure
  """
  @spec location_based_performance_tier_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Database.PostgreSql.Model.PerformanceTierListResult.t} | {:error, Tesla.Env.t}
  def location_based_performance_tier_list(connection, api_version, subscription_id, location_name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.DBforPostgreSQL/locations/#{location_name}/performanceTiers")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Database.PostgreSql.Model.PerformanceTierListResult{})
  end
end
