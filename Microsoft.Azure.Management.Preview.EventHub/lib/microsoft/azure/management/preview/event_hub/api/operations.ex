# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.EventHub.Api.Operations do
  @moduledoc """
  API calls for all endpoints tagged `Operations`.
  """

  alias Microsoft.Azure.Management.Preview.EventHub.Connection
  import Microsoft.Azure.Management.Preview.EventHub.RequestBuilder


  @doc """
  Lists all of the available Event Hub REST API operations.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.EventHub.Connection): Connection to server
  - api_version (String.t): Client API version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.EventHub.Model.OperationListResult{}} on success
  {:error, info} on failure
  """
  @spec operations_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.EventHub.Model.OperationListResult.t} | {:error, Tesla.Env.t}
  def operations_list(connection, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.EventHub/operations")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.EventHub.Model.OperationListResult{})
  end
end
