# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Management.Api.Operations do
  @moduledoc """
  API calls for all endpoints tagged `Operations`.
  """

  alias Microsoft.Azure.Management.Management.Connection
  import Microsoft.Azure.Management.Management.RequestBuilder


  @doc """
  Lists all of the available Management REST API operations.

  ## Parameters

  - connection (Microsoft.Azure.Management.Management.Connection): Connection to server
  - api_version (String.t): Version of the API to be used with the client request. The current version is 2018-01-01-preview.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Management.Model.OperationListResult{}} on success
  {:error, info} on failure
  """
  @spec operations_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Management.Model.OperationListResult.t} | {:error, Tesla.Env.t}
  def operations_list(connection, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.Management/operations")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Management.Model.OperationListResult{})
  end
end
