# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.BotService.Api.ListServiceProviders do
  @moduledoc """
  API calls for all endpoints tagged `ListServiceProviders`.
  """

  alias Microsoft.Azure.Management.Preview.BotService.Connection
  import Microsoft.Azure.Management.Preview.BotService.RequestBuilder


  @doc """
  Lists the available Service Providers for creating Connection Settings

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.BotService.Connection): Connection to server
  - api_version (String.t): Version of the API to be used with the client request. Current version is 2017-12-01
  - subscription_id (String.t): Azure Subscription ID.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.BotService.Model.ServiceProviderResponseList{}} on success
  {:error, info} on failure
  """
  @spec bot_connection_list_service_providers(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.BotService.Model.ServiceProviderResponseList.t} | {:error, Tesla.Env.t}
  def bot_connection_list_service_providers(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.BotService/listAuthServiceProviders")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.BotService.Model.ServiceProviderResponseList{})
  end
end
