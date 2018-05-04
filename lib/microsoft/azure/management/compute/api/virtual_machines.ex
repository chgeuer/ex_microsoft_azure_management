# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Api.VirtualMachines do
  @moduledoc """
  API calls for all endpoints tagged `VirtualMachines`.
  """

  alias Microsoft.Azure.Management.Compute.Connection
  import Microsoft.Azure.Management.Compute.RequestBuilder


  @doc """
  Run command on the VM.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - vm_name (String.t): The name of the virtual machine.
  - parameters (RunCommandInput): Parameters supplied to the Run command operation.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.RunCommandResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_machines_run_command(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Compute.Model.RunCommandInput.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.RunCommandResult.t} | {:error, Tesla.Env.t}
  def virtual_machines_run_command(connection, resource_group_name, vm_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/virtualMachines/#{vm_name}/runCommand")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.RunCommandResult{})
  end
end
