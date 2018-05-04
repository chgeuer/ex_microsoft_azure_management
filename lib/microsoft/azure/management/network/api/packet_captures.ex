# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.PacketCaptures do
  @moduledoc """
  API calls for all endpoints tagged `PacketCaptures`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Create and start a packet capture on the specified VM.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - network_watcher_name (String.t): The name of the network watcher.
  - packet_capture_name (String.t): The name of the packet capture session.
  - parameters (PacketCapture): Parameters that define the create packet capture operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PacketCaptureResult{}} on success
  {:error, info} on failure
  """
  @spec packet_captures_create(Tesla.Env.client, String.t, String.t, String.t, Microsoft.Azure.Management.Network.Model.PacketCapture.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PacketCaptureResult.t} | {:error, Tesla.Env.t}
  def packet_captures_create(connection, resource_group_name, network_watcher_name, packet_capture_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/networkWatchers/#{network_watcher_name}/packetCaptures/#{packet_capture_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PacketCaptureResult{})
  end

  @doc """
  Deletes the specified packet capture session.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - network_watcher_name (String.t): The name of the network watcher.
  - packet_capture_name (String.t): The name of the packet capture session.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec packet_captures_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def packet_captures_delete(connection, resource_group_name, network_watcher_name, packet_capture_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/networkWatchers/#{network_watcher_name}/packetCaptures/#{packet_capture_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a packet capture session by name.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - network_watcher_name (String.t): The name of the network watcher.
  - packet_capture_name (String.t): The name of the packet capture session.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PacketCaptureResult{}} on success
  {:error, info} on failure
  """
  @spec packet_captures_get(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PacketCaptureResult.t} | {:error, Tesla.Env.t}
  def packet_captures_get(connection, resource_group_name, network_watcher_name, packet_capture_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/networkWatchers/#{network_watcher_name}/packetCaptures/#{packet_capture_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PacketCaptureResult{})
  end

  @doc """
  Query the status of a running packet capture session.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - network_watcher_name (String.t): The name of the Network Watcher resource.
  - packet_capture_name (String.t): The name given to the packet capture session.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PacketCaptureQueryStatusResult{}} on success
  {:error, info} on failure
  """
  @spec packet_captures_get_status(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PacketCaptureQueryStatusResult.t} | {:error, Tesla.Env.t}
  def packet_captures_get_status(connection, resource_group_name, network_watcher_name, packet_capture_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/networkWatchers/#{network_watcher_name}/packetCaptures/#{packet_capture_name}/queryStatus")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PacketCaptureQueryStatusResult{})
  end

  @doc """
  Lists all packet capture sessions within the specified resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - network_watcher_name (String.t): The name of the Network Watcher resource.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PacketCaptureListResult{}} on success
  {:error, info} on failure
  """
  @spec packet_captures_list(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PacketCaptureListResult.t} | {:error, Tesla.Env.t}
  def packet_captures_list(connection, resource_group_name, network_watcher_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/networkWatchers/#{network_watcher_name}/packetCaptures")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PacketCaptureListResult{})
  end

  @doc """
  Stops a specified packet capture session.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - network_watcher_name (String.t): The name of the network watcher.
  - packet_capture_name (String.t): The name of the packet capture session.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec packet_captures_stop(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def packet_captures_stop(connection, resource_group_name, network_watcher_name, packet_capture_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/networkWatchers/#{network_watcher_name}/packetCaptures/#{packet_capture_name}/stop")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
