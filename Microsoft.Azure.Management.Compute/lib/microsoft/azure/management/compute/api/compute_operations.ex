# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Api.ComputeOperations do
  @moduledoc """
  API calls for all endpoints tagged `ComputeOperations`.
  """

  alias Microsoft.Azure.Management.Compute.Connection
  import Microsoft.Azure.Management.Compute.RequestBuilder


  @doc """
  Gets a list of compute operations.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - api_version (String.t): Client Api Version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.ComputeOperationListResult{}} on success
  {:error, info} on failure
  """
  @spec operations_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.ComputeOperationListResult.t} | {:error, Tesla.Env.t}
  def operations_list(connection, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.Compute/operations")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.ComputeOperationListResult{})
  end
end
