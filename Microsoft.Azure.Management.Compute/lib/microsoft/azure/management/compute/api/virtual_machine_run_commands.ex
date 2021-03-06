# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Api.VirtualMachineRunCommands do
  @moduledoc """
  API calls for all endpoints tagged `VirtualMachineRunCommands`.
  """

  alias Microsoft.Azure.Management.Compute.Connection
  import Microsoft.Azure.Management.Compute.RequestBuilder


  @doc """
  Gets specific run command for a subscription in a location.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - location (String.t): The location upon which run commands is queried.
  - command_id (String.t): The command id.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.RunCommandDocument{}} on success
  {:error, info} on failure
  """
  @spec virtual_machine_run_commands_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.RunCommandDocument.t} | {:error, Tesla.Env.t}
  def virtual_machine_run_commands_get(connection, location, command_id, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/runCommands/#{command_id}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.RunCommandDocument{})
  end

  @doc """
  Lists all available run commands for a subscription in a location.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - location (String.t): The location upon which run commands is queried.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.RunCommandListResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_machine_run_commands_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.RunCommandListResult.t} | {:error, Tesla.Env.t}
  def virtual_machine_run_commands_list(connection, location, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/runCommands")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.RunCommandListResult{})
  end
end
