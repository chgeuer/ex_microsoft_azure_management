# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias Microsoft.Azure.Management.Preview.Containers.Connection
  import Microsoft.Azure.Management.Preview.Containers.RequestBuilder


  @doc """
  Get the usage for a subscription

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - location (String.t): The identifier for the physical azure location.
  - api_version (String.t): Client API version
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.UsageListResult{}} on success
  {:error, info} on failure
  """
  @spec container_group_usage_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.UsageListResult.t} | {:error, Tesla.Env.t}
  def container_group_usage_list(connection, subscription_id, location, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.ContainerInstance/locations/#{location}/usages")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.UsageListResult{})
  end

  @doc """
  Create or update container groups.
  Create or update container groups with specified configurations.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client API version
  - resource_group_name (String.t): The name of the resource group.
  - container_group_name (String.t): The name of the container group.
  - container_group (ContainerGroup): The properties of the container group to be created or updated.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup{}} on success
  {:error, info} on failure
  """
  @spec container_groups_create_or_update(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup.t} | {:error, Tesla.Env.t}
  def container_groups_create_or_update(connection, subscription_id, api_version, resource_group_name, container_group_name, container_group, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/#{container_group_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, container_group)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup{})
  end

  @doc """
  Delete the specified container group.
  Delete the specified container group in the specified subscription and resource group. The operation does not delete other resources provided by the user, such as volumes.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client API version
  - resource_group_name (String.t): The name of the resource group.
  - container_group_name (String.t): The name of the container group.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup{}} on success
  {:error, info} on failure
  """
  @spec container_groups_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup.t} | {:error, Tesla.Env.t}
  def container_groups_delete(connection, subscription_id, api_version, resource_group_name, container_group_name, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/#{container_group_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup{})
  end

  @doc """
  Get the properties of the specified container group.
  Gets the properties of the specified container group in the specified subscription and resource group. The operation returns the properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client API version
  - resource_group_name (String.t): The name of the resource group.
  - container_group_name (String.t): The name of the container group.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup{}} on success
  {:error, info} on failure
  """
  @spec container_groups_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup.t} | {:error, Tesla.Env.t}
  def container_groups_get(connection, subscription_id, api_version, resource_group_name, container_group_name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/#{container_group_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup{})
  end

  @doc """
  Get a list of container groups in the specified subscription.
  Get a list of container groups in the specified subscription. This operation returns properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client API version
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroupListResult{}} on success
  {:error, info} on failure
  """
  @spec container_groups_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroupListResult.t} | {:error, Tesla.Env.t}
  def container_groups_list(connection, subscription_id, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.ContainerInstance/containerGroups")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroupListResult{})
  end

  @doc """
  Get a list of container groups in the specified subscription and resource group.
  Get a list of container groups in a specified subscription and resource group. This operation returns properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client API version
  - resource_group_name (String.t): The name of the resource group.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroupListResult{}} on success
  {:error, info} on failure
  """
  @spec container_groups_list_by_resource_group(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroupListResult.t} | {:error, Tesla.Env.t}
  def container_groups_list_by_resource_group(connection, subscription_id, api_version, resource_group_name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroupListResult{})
  end

  @doc """
  Update container groups.
  Updates container group tags with specified values.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client API version
  - resource_group_name (String.t): The name of the resource group.
  - container_group_name (String.t): The name of the container group.
  - resource (Resource): The container group resource with just the tags to be updated.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup{}} on success
  {:error, info} on failure
  """
  @spec container_groups_update(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Preview.Containers.Model.Resource.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup.t} | {:error, Tesla.Env.t}
  def container_groups_update(connection, subscription_id, api_version, resource_group_name, container_group_name, resource, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/#{container_group_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, resource)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.ContainerGroup{})
  end

  @doc """
  Get the logs for a specified container instance.
  Get the logs for a specified container instance in a specified resource group and container group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client API version
  - resource_group_name (String.t): The name of the resource group.
  - container_group_name (String.t): The name of the container group.
  - container_name (String.t): The name of the container instance.
  - opts (KeywordList): [optional] Optional parameters
    - :tail (integer()): The number of lines to show from the tail of the container instance log. If not provided, all available logs are shown up to 4mb.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.Logs{}} on success
  {:error, info} on failure
  """
  @spec container_logs_list(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.Logs.t} | {:error, Tesla.Env.t}
  def container_logs_list(connection, subscription_id, api_version, resource_group_name, container_group_name, container_name, opts \\ []) do
    optional_params = %{
      :"tail" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/#{container_group_name}/containers/#{container_name}/logs")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.Logs{})
  end

  @doc """
  Starts the exec command for a specific container instance.
  Starts the exec command for a specified container instance in a specified resource group and container group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - api_version (String.t): Client API version
  - resource_group_name (String.t): The name of the resource group.
  - container_group_name (String.t): The name of the container group.
  - container_name (String.t): The name of the container instance.
  - container_exec_request (ContainerExecRequest): The request for the exec command.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.ContainerExecResponse{}} on success
  {:error, info} on failure
  """
  @spec start_container_launch_exec(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Preview.Containers.Model.ContainerExecRequest.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.ContainerExecResponse.t} | {:error, Tesla.Env.t}
  def start_container_launch_exec(connection, subscription_id, api_version, resource_group_name, container_group_name, container_name, container_exec_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/#{container_group_name}/containers/#{container_name}/exec")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, container_exec_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.ContainerExecResponse{})
  end
end
