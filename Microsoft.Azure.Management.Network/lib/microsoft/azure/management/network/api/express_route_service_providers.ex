# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.ExpressRouteServiceProviders do
  @moduledoc """
  API calls for all endpoints tagged `ExpressRouteServiceProviders`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Gets all the available express route service providers.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteServiceProviderListResult{}} on success
  {:error, info} on failure
  """
  @spec express_route_service_providers_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteServiceProviderListResult.t} | {:error, Tesla.Env.t}
  def express_route_service_providers_list(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Network/expressRouteServiceProviders")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteServiceProviderListResult{})
  end
end
