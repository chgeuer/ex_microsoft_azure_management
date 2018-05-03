# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Api.Disks do
  @moduledoc """
  API calls for all endpoints tagged `Disks`.
  """

  alias Microsoft.Azure.Management.Compute.Connection
  import Microsoft.Azure.Management.Compute.RequestBuilder


  @doc """
  Creates or updates a disk.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group.
  - disk_name (String.t): The name of the managed disk that is being created. The name can&#39;t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9 and _. The maximum name length is 80 characters.
  - api_version (String.t): Client Api Version.
  - disk (Disk): Disk object supplied in the body of the Put disk operation.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.Disk{}} on success
  {:error, info} on failure
  """
  @spec disks_create_or_update(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Compute.Model.Disk.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.Disk.t} | {:error, Tesla.Env.t}
  def disks_create_or_update(connection, subscription_id, resource_group_name, disk_name, api_version, disk, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :"disk", disk)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.Disk{})
  end

  @doc """
  Deletes a disk.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group.
  - disk_name (String.t): The name of the managed disk that is being created. The name can&#39;t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9 and _. The maximum name length is 80 characters.
  - api_version (String.t): Client Api Version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.OperationStatusResponse{}} on success
  {:error, info} on failure
  """
  @spec disks_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.OperationStatusResponse.t} | {:error, Tesla.Env.t}
  def disks_delete(connection, subscription_id, resource_group_name, disk_name, api_version, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.OperationStatusResponse{})
  end

  @doc """
  Gets information about a disk.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group.
  - disk_name (String.t): The name of the managed disk that is being created. The name can&#39;t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9 and _. The maximum name length is 80 characters.
  - api_version (String.t): Client Api Version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.Disk{}} on success
  {:error, info} on failure
  """
  @spec disks_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.Disk.t} | {:error, Tesla.Env.t}
  def disks_get(connection, subscription_id, resource_group_name, disk_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.Disk{})
  end

  @doc """
  Grants access to a disk.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group.
  - disk_name (String.t): The name of the managed disk that is being created. The name can&#39;t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9 and _. The maximum name length is 80 characters.
  - api_version (String.t): Client Api Version.
  - grant_access_data (GrantAccessData): Access data object supplied in the body of the get disk access operation.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.AccessUri{}} on success
  {:error, info} on failure
  """
  @spec disks_grant_access(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Compute.Model.GrantAccessData.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.AccessUri.t} | {:error, Tesla.Env.t}
  def disks_grant_access(connection, subscription_id, resource_group_name, disk_name, api_version, grant_access_data, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}/beginGetAccess")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :"grantAccessData", grant_access_data)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.AccessUri{})
  end

  @doc """
  Lists all the disks under a subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client Api Version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.DiskList{}} on success
  {:error, info} on failure
  """
  @spec disks_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.DiskList.t} | {:error, Tesla.Env.t}
  def disks_list(connection, subscription_id, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/disks")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.DiskList{})
  end

  @doc """
  Lists all the disks under a resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group.
  - api_version (String.t): Client Api Version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.DiskList{}} on success
  {:error, info} on failure
  """
  @spec disks_list_by_resource_group(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.DiskList.t} | {:error, Tesla.Env.t}
  def disks_list_by_resource_group(connection, subscription_id, resource_group_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/disks")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.DiskList{})
  end

  @doc """
  Revokes access to a disk.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group.
  - disk_name (String.t): The name of the managed disk that is being created. The name can&#39;t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9 and _. The maximum name length is 80 characters.
  - api_version (String.t): Client Api Version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.OperationStatusResponse{}} on success
  {:error, info} on failure
  """
  @spec disks_revoke_access(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.OperationStatusResponse.t} | {:error, Tesla.Env.t}
  def disks_revoke_access(connection, subscription_id, resource_group_name, disk_name, api_version, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}/endGetAccess")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.OperationStatusResponse{})
  end

  @doc """
  Updates (patches) a disk.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): The name of the resource group.
  - disk_name (String.t): The name of the managed disk that is being created. The name can&#39;t be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9 and _. The maximum name length is 80 characters.
  - api_version (String.t): Client Api Version.
  - disk (DiskUpdate): Disk object supplied in the body of the Patch disk operation.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.Disk{}} on success
  {:error, info} on failure
  """
  @spec disks_update(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Compute.Model.DiskUpdate.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.Disk.t} | {:error, Tesla.Env.t}
  def disks_update(connection, subscription_id, resource_group_name, disk_name, api_version, disk, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Compute/disks/#{disk_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :"disk", disk)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.Disk{})
  end
end
