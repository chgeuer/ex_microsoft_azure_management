# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Api.ClassicAdministrators do
  @moduledoc """
  API calls for all endpoints tagged `ClassicAdministrators`.
  """

  alias Microsoft.Azure.Management.Authorization.Connection
  import Microsoft.Azure.Management.Authorization.RequestBuilder


  @doc """
  Gets service administrator, account administrator, and co-administrators for the subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ClassicAdministratorListResult{}} on success
  {:error, info} on failure
  """
  @spec classic_administrators_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ClassicAdministratorListResult.t} | {:error, Tesla.Env.t}
  def classic_administrators_list(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Authorization/classicAdministrators")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ClassicAdministratorListResult{})
  end
end