# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Subscription.Api.Tenants do
  @moduledoc """
  API calls for all endpoints tagged `Tenants`.
  """

  alias Microsoft.Azure.Management.Subscription.Connection
  import Microsoft.Azure.Management.Subscription.RequestBuilder


  @doc """
  Gets the tenants for your account.

  ## Parameters

  - connection (Microsoft.Azure.Management.Subscription.Connection): Connection to server
  - api_version (String.t): The API version to use for the operation.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Subscription.Model.TenantListResult{}} on success
  {:error, info} on failure
  """
  @spec tenants_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Subscription.Model.TenantListResult.t} | {:error, Tesla.Env.t}
  def tenants_list(connection, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/tenants")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Subscription.Model.TenantListResult{})
  end
end