# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Api.VirtualMachineScaleSetExtensions do
  @moduledoc """
  API calls for all endpoints tagged `VirtualMachineScaleSetExtensions`.
  """

  alias Microsoft.Azure.Management.Compute.Connection
  import Microsoft.Azure.Management.Compute.RequestBuilder


  @doc """
  The operation to create or update an extension.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - vm_scale_set_name (String.t): The name of the VM scale set where the extension should be create or updated.
  - vmss_extension_name (String.t): The name of the VM scale set extension.
  - extension_parameters (VirtualMachineScaleSetExtension): Parameters supplied to the Create VM scale set Extension operation.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtension{}} on success
  {:error, info} on failure
  """
  @spec virtual_machine_scale_set_extensions_create_or_update(Tesla.Env.client, String.t, String.t, String.t, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtension.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtension.t} | {:error, Tesla.Env.t}
  def virtual_machine_scale_set_extensions_create_or_update(connection, resource_group_name, vm_scale_set_name, vmss_extension_name, extension_parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/#{vm_scale_set_name}/extensions/#{vmss_extension_name}")
    |> add_param(:body, :"extensionParameters", extension_parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtension{})
  end

  @doc """
  The operation to delete the extension.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - vm_scale_set_name (String.t): The name of the VM scale set where the extension should be deleted.
  - vmss_extension_name (String.t): The name of the VM scale set extension.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.OperationStatusResponse{}} on success
  {:error, info} on failure
  """
  @spec virtual_machine_scale_set_extensions_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.OperationStatusResponse.t} | {:error, Tesla.Env.t}
  def virtual_machine_scale_set_extensions_delete(connection, resource_group_name, vm_scale_set_name, vmss_extension_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/#{vm_scale_set_name}/extensions/#{vmss_extension_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.OperationStatusResponse{})
  end

  @doc """
  The operation to get the extension.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - vm_scale_set_name (String.t): The name of the VM scale set containing the extension.
  - vmss_extension_name (String.t): The name of the VM scale set extension.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters
    - :__expand (String.t): The expand expression to apply on the operation.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtension{}} on success
  {:error, info} on failure
  """
  @spec virtual_machine_scale_set_extensions_get(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtension.t} | {:error, Tesla.Env.t}
  def virtual_machine_scale_set_extensions_get(connection, resource_group_name, vm_scale_set_name, vmss_extension_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$expand" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/#{vm_scale_set_name}/extensions/#{vmss_extension_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtension{})
  end

  @doc """
  Gets a list of all extensions in a VM scale set.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - vm_scale_set_name (String.t): The name of the VM scale set containing the extension.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtensionListResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_machine_scale_set_extensions_list(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtensionListResult.t} | {:error, Tesla.Env.t}
  def virtual_machine_scale_set_extensions_list(connection, resource_group_name, vm_scale_set_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/#{vm_scale_set_name}/extensions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.VirtualMachineScaleSetExtensionListResult{})
  end
end