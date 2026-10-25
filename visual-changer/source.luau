--[[ teamcch/projects/visual-changer/source.luau | v1.0.0.0 | Visual Changer
 _________  _______   ________  _____ ______   ________  ________  ___  ___     
|\___   ___\\  ___ \ |\   __  \|\   _ \  _   \|\   ____\|\   ____\|\  \|\  \    
\|___ \  \_\ \   __/|\ \  \|\  \ \  \\\__\ \  \ \  \___|\ \  \___|\ \  \\\  \   
     \ \  \ \ \  \_|/_\ \   __  \ \  \\|__| \  \ \  \    \ \  \    \ \   __  \  
      \ \  \ \ \  \_|\ \ \  \ \  \ \  \    \ \  \ \  \____\ \  \____\ \  \ \  \ 
       \ \__\ \ \_______\ \__\ \__\ \__\    \ \__\ \_______\ \_______\ \__\ \__\
        \|__|  \|_______|\|__|\|__|\|__|     \|__|\|_______|\|_______|\|__|\|__|

]]--

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local lp = Players.LocalPlayer

local UI = [==[<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4">
	<Meta name="ExplicitAutoJoints">true</Meta>
	<External>null</External>
	<External>nil</External>
	<Item class="ScreenGui" referent="RBX6A56B2D964EA4AAE85898AC647CDD012">
		<Properties>
			<bool name="ClipToDeviceSafeArea">true</bool>
			<int name="DisplayOrder">0</int>
			<token name="SafeAreaCompatibility">1</token>
			<token name="ScreenInsets">1</token>
			<bool name="Enabled">true</bool>
			<bool name="ResetOnSpawn">false</bool>
			<token name="ZIndexBehavior">1</token>
			<bool name="AutoLocalize">true</bool>
			<Ref name="RootLocalizationTable">null</Ref>
			<token name="SelectionBehaviorDown">0</token>
			<token name="SelectionBehaviorLeft">0</token>
			<token name="SelectionBehaviorRight">0</token>
			<token name="SelectionBehaviorUp">0</token>
			<bool name="SelectionGroup">false</bool>
			<BinaryString name="AttributesSerialize"></BinaryString>
			<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
			<bool name="DefinesCapabilities">false</bool>
			<string name="Name">Visual Changer</string>
			<BinaryString name="SerializedOverrides"></BinaryString>
			<int64 name="SourceAssetId">-1</int64>
			<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
		</Properties>
		<Item class="Frame" referent="RBXACE5A6480CAB4C228B58B6C9E2EC2348">
			<Properties>
				<token name="Style">0</token>
				<bool name="Active">false</bool>
				<Vector2 name="AnchorPoint">
					<X>0</X>
					<Y>0</Y>
				</Vector2>
				<token name="AutomaticSize">0</token>
				<Color3 name="BackgroundColor3">
					<R>0.0980392173</R>
					<G>0.0980392173</G>
					<B>0.0980392173</B>
				</Color3>
				<float name="BackgroundTransparency">0</float>
				<Color3 name="BorderColor3">
					<R>0</R>
					<G>0</G>
					<B>0</B>
				</Color3>
				<token name="BorderMode">0</token>
				<int name="BorderSizePixel">0</int>
				<bool name="ClipsDescendants">false</bool>
				<bool name="Draggable">false</bool>
				<bool name="Interactable">true</bool>
				<int name="LayoutOrder">0</int>
				<Ref name="NextSelectionDown">null</Ref>
				<Ref name="NextSelectionLeft">null</Ref>
				<Ref name="NextSelectionRight">null</Ref>
				<Ref name="NextSelectionUp">null</Ref>
				<UDim2 name="Position">
					<XS>0.338858187</XS>
					<XO>255</XO>
					<YS>0.249791846</YS>
					<YO>-36</YO>
				</UDim2>
				<float name="Rotation">0</float>
				<bool name="Selectable">false</bool>
				<Ref name="SelectionImageObject">null</Ref>
				<int name="SelectionOrder">0</int>
				<token name="Sink">0</token>
				<UDim2 name="Size">
					<XS>0</XS>
					<XO>700</XO>
					<YS>0</YS>
					<YO>600</YO>
				</UDim2>
				<token name="SizeConstraint">0</token>
				<bool name="Visible">true</bool>
				<int name="ZIndex">1</int>
				<bool name="AutoLocalize">true</bool>
				<Ref name="RootLocalizationTable">null</Ref>
				<token name="SelectionBehaviorDown">0</token>
				<token name="SelectionBehaviorLeft">0</token>
				<token name="SelectionBehaviorRight">0</token>
				<token name="SelectionBehaviorUp">0</token>
				<bool name="SelectionGroup">false</bool>
				<BinaryString name="AttributesSerialize"></BinaryString>
				<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
				<bool name="DefinesCapabilities">false</bool>
				<string name="Name">Window</string>
				<BinaryString name="SerializedOverrides"></BinaryString>
				<int64 name="SourceAssetId">-1</int64>
				<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
			</Properties>
			<Item class="UIScale" referent="RBXEB1427E6D4C9439292D4D2EC6F087A14">
				<Properties>
					<float name="Scale">1</float>
					<BinaryString name="AttributesSerialize"></BinaryString>
					<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
					<bool name="DefinesCapabilities">false</bool>
					<string name="Name">UIScale</string>
					<BinaryString name="SerializedOverrides"></BinaryString>
					<int64 name="SourceAssetId">-1</int64>
					<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
				</Properties>
			</Item>
			<Item class="UIShadow" referent="RBXC77C0DA1B2164C4FA619298D8027C309">
				<Properties>
					<UDim name="BlurRadius">
						<S>0</S>
						<O>20</O>
					</UDim>
					<Color3 name="Color">
						<R>0</R>
						<G>0</G>
						<B>0</B>
					</Color3>
					<bool name="Enabled">true</bool>
					<bool name="Inset">false</bool>
					<token name="Mode">0</token>
					<UDim2 name="Offset">
						<XS>0</XS>
						<XO>0</XO>
						<YS>0</YS>
						<YO>0</YO>
					</UDim2>
					<bool name="ShowBehindParent">true</bool>
					<UDim2 name="Spread">
						<XS>0</XS>
						<XO>15</XO>
						<YS>0</YS>
						<YO>15</YO>
					</UDim2>
					<float name="Transparency">0.5</float>
					<int name="ZIndex">-1</int>
					<BinaryString name="AttributesSerialize"></BinaryString>
					<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
					<bool name="DefinesCapabilities">false</bool>
					<string name="Name">UIShadow</string>
					<BinaryString name="SerializedOverrides"></BinaryString>
					<int64 name="SourceAssetId">-1</int64>
					<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
				</Properties>
			</Item>
			<Item class="Frame" referent="RBX44233DA56ADE4B9B8DA4A7A56A3904E7">
				<Properties>
					<token name="Style">0</token>
					<bool name="Active">false</bool>
					<Vector2 name="AnchorPoint">
						<X>0</X>
						<Y>0</Y>
					</Vector2>
					<token name="AutomaticSize">0</token>
					<Color3 name="BackgroundColor3">
						<R>0.0784313753</R>
						<G>0.0784313753</G>
						<B>0.0784313753</B>
					</Color3>
					<float name="BackgroundTransparency">0</float>
					<Color3 name="BorderColor3">
						<R>0</R>
						<G>0</G>
						<B>0</B>
					</Color3>
					<token name="BorderMode">0</token>
					<int name="BorderSizePixel">0</int>
					<bool name="ClipsDescendants">false</bool>
					<bool name="Draggable">false</bool>
					<bool name="Interactable">true</bool>
					<int name="LayoutOrder">0</int>
					<Ref name="NextSelectionDown">null</Ref>
					<Ref name="NextSelectionLeft">null</Ref>
					<Ref name="NextSelectionRight">null</Ref>
					<Ref name="NextSelectionUp">null</Ref>
					<UDim2 name="Position">
						<XS>0</XS>
						<XO>0</XO>
						<YS>0</YS>
						<YO>0</YO>
					</UDim2>
					<float name="Rotation">0</float>
					<bool name="Selectable">false</bool>
					<Ref name="SelectionImageObject">null</Ref>
					<int name="SelectionOrder">0</int>
					<token name="Sink">0</token>
					<UDim2 name="Size">
						<XS>0</XS>
						<XO>700</XO>
						<YS>0</YS>
						<YO>45</YO>
					</UDim2>
					<token name="SizeConstraint">0</token>
					<bool name="Visible">true</bool>
					<int name="ZIndex">1</int>
					<bool name="AutoLocalize">true</bool>
					<Ref name="RootLocalizationTable">null</Ref>
					<token name="SelectionBehaviorDown">0</token>
					<token name="SelectionBehaviorLeft">0</token>
					<token name="SelectionBehaviorRight">0</token>
					<token name="SelectionBehaviorUp">0</token>
					<bool name="SelectionGroup">false</bool>
					<BinaryString name="AttributesSerialize"></BinaryString>
					<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
					<bool name="DefinesCapabilities">false</bool>
					<string name="Name">Titlebar</string>
					<BinaryString name="SerializedOverrides"></BinaryString>
					<int64 name="SourceAssetId">-1</int64>
					<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
				</Properties>
				<Item class="Frame" referent="RBXB7DB922F6BE54744A941976B17E5F2B2">
					<Properties>
						<token name="Style">0</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>1</R>
							<G>1</G>
							<B>1</B>
						</Color3>
						<float name="BackgroundTransparency">1</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">true</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0</XS>
							<XO>0</XO>
							<YS>0</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>0</XS>
							<XO>510</XO>
							<YS>0</YS>
							<YO>45</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">true</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">TabsContainer</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
					<Item class="UIListLayout" referent="RBX448B67DE8B4C40328A32C88E3E814CB0">
						<Properties>
							<token name="HorizontalFlex">0</token>
							<token name="ItemLineAlignment">0</token>
							<UDim name="Padding">
								<S>0</S>
								<O>5</O>
							</UDim>
							<token name="VerticalFlex">0</token>
							<bool name="Wraps">false</bool>
							<token name="FillDirection">0</token>
							<token name="HorizontalAlignment">1</token>
							<token name="SortOrder">2</token>
							<token name="VerticalAlignment">1</token>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIListLayout</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="UIPadding" referent="RBXDE0F920194AA43E7A69F007409F0031E">
						<Properties>
							<UDim name="PaddingBottom">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingLeft">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingRight">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingTop">
								<S>0</S>
								<O>5</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIPadding</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="TextButton" referent="RBX2AC0387D1C354ED2B1FD272BEEFED2B1">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Accessories</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">30</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.137254909</R>
								<G>0.137254909</G>
								<B>0.137254909</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Accessories</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIStroke" referent="RBX1BB01B670F2B4C4EA70C38828EE5BD9A">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UICorner" referent="RBXF3F1738047D2448AB49A370F3F7FE5DC">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="TextButton" referent="RBX89799561B319435297B0490CE159A565">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Outfit</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">30</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.137254909</R>
								<G>0.137254909</G>
								<B>0.137254909</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Outfit</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBX1128BF6516404DD19BF54C9C0C23E168">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX38EB484AE0D64816BE6E955216D6FC20">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.337254912</R>
									<G>0.337254912</G>
									<B>0.337254912</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="TextButton" referent="RBX8391E87ED8D744978CCD5A7A68CE146D">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Body</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">30</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.137254909</R>
								<G>0.137254909</G>
								<B>0.137254909</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Body</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBXE1BB556C3F7845CCBC3967EF35FDED9A">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX63E5E95F42DE4DA2ACB7C6D643DFBAAB">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.337254912</R>
									<G>0.337254912</G>
									<B>0.337254912</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="TextButton" referent="RBX97F487AD48994D00ABD9EF2981267FA3">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Settings</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">30</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.137254909</R>
								<G>0.137254909</G>
								<B>0.137254909</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Settings</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBXF0320A4D928D4312AF1539BD198A2E33">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX9D7F6C243F6D412E9DAD93B65EA118B8">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.337254912</R>
									<G>0.337254912</G>
									<B>0.337254912</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
				</Item>
				<Item class="TextLabel" referent="RBX78BCFCA5F003485AABB2DE45767D23D0">
					<Properties>
						<Font name="FontFace">
							<Family><url>rbxassetid://12187365559</url></Family>
							<Weight>400</Weight>
							<Style>Normal</Style>
						</Font>
						<float name="LineHeight">1</float>
						<string name="LocalizationMatchIdentifier"></string>
						<string name="LocalizationMatchedSourceText"></string>
						<int name="MaxVisibleGraphemes">-1</int>
						<string name="OpenTypeFeatures"></string>
						<bool name="RichText">false</bool>
						<string name="Text">Visual Changer - Project Cheesy</string>
						<Color3 name="TextColor3">
							<R>1</R>
							<G>1</G>
							<B>1</B>
						</Color3>
						<token name="TextDirection">0</token>
						<bool name="TextScaled">true</bool>
						<float name="TextSize">35</float>
						<Color3 name="TextStrokeColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<float name="TextStrokeTransparency">1</float>
						<float name="TextTransparency">0</float>
						<token name="TextTruncate">0</token>
						<bool name="TextWrapped">true</bool>
						<token name="TextXAlignment">2</token>
						<token name="TextYAlignment">1</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>1</R>
							<G>1</G>
							<B>1</B>
						</Color3>
						<float name="BackgroundTransparency">1</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">false</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0.728571415</XS>
							<XO>0</XO>
							<YS>0</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>0</XS>
							<XO>190</XO>
							<YS>0</YS>
							<YO>25</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">true</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">Name</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
				</Item>
				<Item class="TextLabel" referent="RBXF79D04853CDD4D23A07C61CF80EA95A7">
					<Properties>
						<Font name="FontFace">
							<Family><url>rbxassetid://12187365559</url></Family>
							<Weight>400</Weight>
							<Style>Normal</Style>
						</Font>
						<float name="LineHeight">1</float>
						<string name="LocalizationMatchIdentifier"></string>
						<string name="LocalizationMatchedSourceText"></string>
						<int name="MaxVisibleGraphemes">-1</int>
						<string name="OpenTypeFeatures"></string>
						<bool name="RichText">false</bool>
						<string name="Text">Keybind : RightShift</string>
						<Color3 name="TextColor3">
							<R>1</R>
							<G>1</G>
							<B>1</B>
						</Color3>
						<token name="TextDirection">0</token>
						<bool name="TextScaled">false</bool>
						<float name="TextSize">20</float>
						<Color3 name="TextStrokeColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<float name="TextStrokeTransparency">1</float>
						<float name="TextTransparency">0</float>
						<token name="TextTruncate">0</token>
						<bool name="TextWrapped">false</bool>
						<token name="TextXAlignment">2</token>
						<token name="TextYAlignment">1</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>1</R>
							<G>1</G>
							<B>1</B>
						</Color3>
						<float name="BackgroundTransparency">1</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">false</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0.728571415</XS>
							<XO>0</XO>
							<YS>0.555555582</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>0</XS>
							<XO>190</XO>
							<YS>0</YS>
							<YO>20</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">true</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">Keybind</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
				</Item>
				<Item class="UICorner" referent="RBXD022F6DB81DE4DA8A850CF5D15D675EC">
					<Properties>
						<UDim name="BottomLeftRadius">
							<S>0</S>
							<O>0</O>
						</UDim>
						<UDim name="BottomRightRadius">
							<S>0</S>
							<O>0</O>
						</UDim>
						<UDim name="TopLeftRadius">
							<S>0</S>
							<O>4</O>
						</UDim>
						<UDim name="TopRightRadius">
							<S>0</S>
							<O>4</O>
						</UDim>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">UICorner</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
				</Item>
			</Item>
			<Item class="Frame" referent="RBX1213D2959D804546A09ECA89FA5384A1">
				<Properties>
					<token name="Style">0</token>
					<bool name="Active">false</bool>
					<Vector2 name="AnchorPoint">
						<X>0</X>
						<Y>0</Y>
					</Vector2>
					<token name="AutomaticSize">0</token>
					<Color3 name="BackgroundColor3">
						<R>0.0784313753</R>
						<G>0.0784313753</G>
						<B>0.0784313753</B>
					</Color3>
					<float name="BackgroundTransparency">0</float>
					<Color3 name="BorderColor3">
						<R>0</R>
						<G>0</G>
						<B>0</B>
					</Color3>
					<token name="BorderMode">0</token>
					<int name="BorderSizePixel">0</int>
					<bool name="ClipsDescendants">false</bool>
					<bool name="Draggable">false</bool>
					<bool name="Interactable">true</bool>
					<int name="LayoutOrder">0</int>
					<Ref name="NextSelectionDown">null</Ref>
					<Ref name="NextSelectionLeft">null</Ref>
					<Ref name="NextSelectionRight">null</Ref>
					<Ref name="NextSelectionUp">null</Ref>
					<UDim2 name="Position">
						<XS>0</XS>
						<XO>0</XO>
						<YS>0.075000003</YS>
						<YO>0</YO>
					</UDim2>
					<float name="Rotation">0</float>
					<bool name="Selectable">false</bool>
					<Ref name="SelectionImageObject">null</Ref>
					<int name="SelectionOrder">0</int>
					<token name="Sink">0</token>
					<UDim2 name="Size">
						<XS>0</XS>
						<XO>110</XO>
						<YS>0</YS>
						<YO>555</YO>
					</UDim2>
					<token name="SizeConstraint">0</token>
					<bool name="Visible">true</bool>
					<int name="ZIndex">1</int>
					<bool name="AutoLocalize">true</bool>
					<Ref name="RootLocalizationTable">null</Ref>
					<token name="SelectionBehaviorDown">0</token>
					<token name="SelectionBehaviorLeft">0</token>
					<token name="SelectionBehaviorRight">0</token>
					<token name="SelectionBehaviorUp">0</token>
					<bool name="SelectionGroup">false</bool>
					<BinaryString name="AttributesSerialize"></BinaryString>
					<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
					<bool name="DefinesCapabilities">false</bool>
					<string name="Name">SubTabs</string>
					<BinaryString name="SerializedOverrides"></BinaryString>
					<int64 name="SourceAssetId">-1</int64>
					<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
				</Properties>
				<Item class="Frame" referent="RBX85C4139AD599402F883C2C4465F73D91">
					<Properties>
						<token name="Style">0</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>1</R>
							<G>1</G>
							<B>1</B>
						</Color3>
						<float name="BackgroundTransparency">1</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">false</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0</XS>
							<XO>0</XO>
							<YS>0</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>1</XS>
							<XO>0</XO>
							<YS>1</YS>
							<YO>0</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">false</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">Accessories</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
					<Item class="TextButton" referent="RBXB66A9A6FBE684D3288E1BC28651F5795">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Head</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.117647059</R>
								<G>0.117647059</G>
								<B>0.117647059</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Head</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIStroke" referent="RBX28F927F4FC1F4E20BA3824196516AF4A">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UICorner" referent="RBX30CF1B79BB6A49778859A34DEB968B98">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="UIPadding" referent="RBXD316AEF5205A4754A04E070CC681203A">
						<Properties>
							<UDim name="PaddingBottom">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingLeft">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingRight">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingTop">
								<S>0</S>
								<O>5</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIPadding</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="UIListLayout" referent="RBXCD4F989605644146A995E299CDDF65D5">
						<Properties>
							<token name="HorizontalFlex">0</token>
							<token name="ItemLineAlignment">0</token>
							<UDim name="Padding">
								<S>0</S>
								<O>5</O>
							</UDim>
							<token name="VerticalFlex">0</token>
							<bool name="Wraps">false</bool>
							<token name="FillDirection">1</token>
							<token name="HorizontalAlignment">1</token>
							<token name="SortOrder">2</token>
							<token name="VerticalAlignment">1</token>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIListLayout</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="TextButton" referent="RBXA26BE4E4448E4F1D8DB87F91AEA73325">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Face</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.117647059</R>
								<G>0.117647059</G>
								<B>0.117647059</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Face</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBXBD94530305B841CCA6DDE1F6279DA25E">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX2821BD36A5EC4B8080288F6D12F8659A">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="TextButton" referent="RBX7768E725BACF47DA99E46B5BE97E49EF">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Neck</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.117647059</R>
								<G>0.117647059</G>
								<B>0.117647059</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Neck</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBX0B399B73D2224EBA93F1CEE8C622FA9F">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX54A3A62C9FD142D3B081926CF65EE578">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="TextButton" referent="RBX9B142188514945698D0EDC943AE105B0">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Back</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.117647059</R>
								<G>0.117647059</G>
								<B>0.117647059</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Back</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBX806629B1E56E4C2EB584C5CC393F3367">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX6BDBC2AAA7E44D819547A6FB4BD7019B">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="TextButton" referent="RBX1ED6822E43574C9886FED1D34E68A368">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Waist</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.117647059</R>
								<G>0.117647059</G>
								<B>0.117647059</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Waist</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBX595886BA36D4444C8848A36677FE43EA">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBXB3BF7E61B1A2406DB4F4FD334E3A8E64">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="TextButton" referent="RBX617CF341ED334FD98F566F32E02FBB2D">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Shoulder</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.117647059</R>
								<G>0.117647059</G>
								<B>0.117647059</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Shoulder</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBX2143CBE01FAB4E33B47968895EB9D728">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX78BA59F44A5E4F9AB3A32DE3E01A2DB3">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="TextButton" referent="RBXFB24E778111A40ACAA429431DB196016">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Front</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.117647059</R>
								<G>0.117647059</G>
								<B>0.117647059</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Front</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBXFD1F772AE32645F59C48B5FC0011876D">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX93EEB3D5EAC84197A2B4BAC9A8B8AB06">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
				</Item>
				<Item class="Frame" referent="RBXD73DBDE7E821487B99CBF370A4A0C052">
					<Properties>
						<token name="Style">0</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>1</R>
							<G>1</G>
							<B>1</B>
						</Color3>
						<float name="BackgroundTransparency">1</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">false</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0</XS>
							<XO>0</XO>
							<YS>0</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>1</XS>
							<XO>0</XO>
							<YS>1</YS>
							<YO>0</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">false</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">Outfit</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
					<Item class="TextButton" referent="RBX8D6A2B02162145EE86415D53745272F6">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Classic Shirt</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.137254909</R>
								<G>0.137254909</G>
								<B>0.137254909</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">CShirt</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIStroke" referent="RBX8B0033DCAAE341CF8685D7DD33303FD9">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UICorner" referent="RBX910A92C825E04D1794BC061454E789A1">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="UIPadding" referent="RBXB3FBA02777B34EA88C67C18FC643A67B">
						<Properties>
							<UDim name="PaddingBottom">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingLeft">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingRight">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingTop">
								<S>0</S>
								<O>5</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIPadding</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="UIListLayout" referent="RBX25E90225A1E145898D84E04DCE1D278C">
						<Properties>
							<token name="HorizontalFlex">0</token>
							<token name="ItemLineAlignment">0</token>
							<UDim name="Padding">
								<S>0</S>
								<O>5</O>
							</UDim>
							<token name="VerticalFlex">0</token>
							<bool name="Wraps">false</bool>
							<token name="FillDirection">1</token>
							<token name="HorizontalAlignment">1</token>
							<token name="SortOrder">2</token>
							<token name="VerticalAlignment">1</token>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIListLayout</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="TextButton" referent="RBX4467395638D64DA2B97215C953D7AE4D">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Classic Pants</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.137254909</R>
								<G>0.137254909</G>
								<B>0.137254909</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">CPants</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIStroke" referent="RBX592292CEBB354C07BE6DB695B0FDDB1B">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UICorner" referent="RBX27D044CFC1AD482DB3A1DE425FE0CAC9">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
				</Item>
				<Item class="Frame" referent="RBX24C4FADF296249A4BB8A681843CF5FC9">
					<Properties>
						<token name="Style">0</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>1</R>
							<G>1</G>
							<B>1</B>
						</Color3>
						<float name="BackgroundTransparency">1</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">false</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0</XS>
							<XO>0</XO>
							<YS>0</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>1</XS>
							<XO>0</XO>
							<YS>1</YS>
							<YO>0</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">false</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">Body</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
					<Item class="UIPadding" referent="RBX8494DB3F3EDA405F823571BE4D8D16C8">
						<Properties>
							<UDim name="PaddingBottom">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingLeft">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingRight">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingTop">
								<S>0</S>
								<O>5</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIPadding</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="UIListLayout" referent="RBX0B90409C86534894A184BCAE8FCB6812">
						<Properties>
							<token name="HorizontalFlex">0</token>
							<token name="ItemLineAlignment">0</token>
							<UDim name="Padding">
								<S>0</S>
								<O>5</O>
							</UDim>
							<token name="VerticalFlex">0</token>
							<bool name="Wraps">false</bool>
							<token name="FillDirection">1</token>
							<token name="HorizontalAlignment">1</token>
							<token name="SortOrder">2</token>
							<token name="VerticalAlignment">1</token>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIListLayout</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="TextButton" referent="RBX7585C892AC7E4585ADF804677B6A0251">
						<Properties>
							<Font name="FontFace">
								<Family><url>rbxassetid://12187365559</url></Family>
								<Weight>400</Weight>
								<Style>Normal</Style>
							</Font>
							<float name="LineHeight">1</float>
							<string name="LocalizationMatchIdentifier"></string>
							<string name="LocalizationMatchedSourceText"></string>
							<int name="MaxVisibleGraphemes">-1</int>
							<string name="OpenTypeFeatures"></string>
							<bool name="RichText">false</bool>
							<string name="Text">Hair</string>
							<Color3 name="TextColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<token name="TextDirection">0</token>
							<bool name="TextScaled">false</bool>
							<float name="TextSize">28</float>
							<Color3 name="TextStrokeColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<float name="TextStrokeTransparency">1</float>
							<float name="TextTransparency">0</float>
							<token name="TextTruncate">0</token>
							<bool name="TextWrapped">true</bool>
							<token name="TextXAlignment">2</token>
							<token name="TextYAlignment">1</token>
							<bool name="AutoButtonColor">true</bool>
							<Ref name="HoverHapticEffect">null</Ref>
							<bool name="Modal">false</bool>
							<Ref name="PressHapticEffect">null</Ref>
							<bool name="Selected">false</bool>
							<token name="Style">0</token>
							<bool name="Active">true</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.137254909</R>
								<G>0.137254909</G>
								<B>0.137254909</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">true</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">1</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>35</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Hair</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIStroke" referent="RBXF73FCBE696F34C12922CD47A42EE05F9">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UICorner" referent="RBXD5C8A8B8AEEB4CE38905F1F605C824D0">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
				</Item>
				<Item class="UICorner" referent="RBXF9B531EA6F24456F8DD720C99188C064">
					<Properties>
						<UDim name="BottomLeftRadius">
							<S>0</S>
							<O>4</O>
						</UDim>
						<UDim name="BottomRightRadius">
							<S>0</S>
							<O>0</O>
						</UDim>
						<UDim name="TopLeftRadius">
							<S>0</S>
							<O>0</O>
						</UDim>
						<UDim name="TopRightRadius">
							<S>0</S>
							<O>0</O>
						</UDim>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">UICorner</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
				</Item>
			</Item>
			<Item class="Frame" referent="RBXEE9030BF5FF7462DAD498454D4838C88">
				<Properties>
					<token name="Style">0</token>
					<bool name="Active">false</bool>
					<Vector2 name="AnchorPoint">
						<X>0</X>
						<Y>0</Y>
					</Vector2>
					<token name="AutomaticSize">0</token>
					<Color3 name="BackgroundColor3">
						<R>1</R>
						<G>1</G>
						<B>1</B>
					</Color3>
					<float name="BackgroundTransparency">1</float>
					<Color3 name="BorderColor3">
						<R>0</R>
						<G>0</G>
						<B>0</B>
					</Color3>
					<token name="BorderMode">0</token>
					<int name="BorderSizePixel">0</int>
					<bool name="ClipsDescendants">false</bool>
					<bool name="Draggable">false</bool>
					<bool name="Interactable">true</bool>
					<int name="LayoutOrder">0</int>
					<Ref name="NextSelectionDown">null</Ref>
					<Ref name="NextSelectionLeft">null</Ref>
					<Ref name="NextSelectionRight">null</Ref>
					<Ref name="NextSelectionUp">null</Ref>
					<UDim2 name="Position">
						<XS>0.157142863</XS>
						<XO>0</XO>
						<YS>0.075000003</YS>
						<YO>0</YO>
					</UDim2>
					<float name="Rotation">0</float>
					<bool name="Selectable">false</bool>
					<Ref name="SelectionImageObject">null</Ref>
					<int name="SelectionOrder">0</int>
					<token name="Sink">0</token>
					<UDim2 name="Size">
						<XS>0</XS>
						<XO>590</XO>
						<YS>0</YS>
						<YO>555</YO>
					</UDim2>
					<token name="SizeConstraint">0</token>
					<bool name="Visible">true</bool>
					<int name="ZIndex">1</int>
					<bool name="AutoLocalize">true</bool>
					<Ref name="RootLocalizationTable">null</Ref>
					<token name="SelectionBehaviorDown">0</token>
					<token name="SelectionBehaviorLeft">0</token>
					<token name="SelectionBehaviorRight">0</token>
					<token name="SelectionBehaviorUp">0</token>
					<bool name="SelectionGroup">false</bool>
					<BinaryString name="AttributesSerialize"></BinaryString>
					<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
					<bool name="DefinesCapabilities">false</bool>
					<string name="Name">Content</string>
					<BinaryString name="SerializedOverrides"></BinaryString>
					<int64 name="SourceAssetId">-1</int64>
					<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
				</Properties>
				<Item class="Frame" referent="RBXC69379C22D324046BEA8449DEF3AF8CC">
					<Properties>
						<token name="Style">0</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>0.0784313753</R>
							<G>0.0784313753</G>
							<B>0.0784313753</B>
						</Color3>
						<float name="BackgroundTransparency">0</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">false</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0.453448266</XS>
							<XO>0</XO>
							<YS>0</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>0</XS>
							<XO>317</XO>
							<YS>0</YS>
							<YO>270</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">true</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">Preview</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
					<Item class="UIPadding" referent="RBXF8038A03D7F54120B4609F1918074696">
						<Properties>
							<UDim name="PaddingBottom">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingLeft">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingRight">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingTop">
								<S>0</S>
								<O>5</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIPadding</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="ViewportFrame" referent="RBX23B631285DA848B7817F16BE06873FA8">
						<Properties>
							<Color3 name="Ambient">
								<R>0.784313738</R>
								<G>0.784313738</G>
								<B>0.784313738</B>
							</Color3>
							<CoordinateFrame name="CameraCFrame">
								<X>0</X>
								<Y>0</Y>
								<Z>0</Z>
								<R00>1</R00>
								<R01>0</R01>
								<R02>0</R02>
								<R10>0</R10>
								<R11>1</R11>
								<R12>0</R12>
								<R20>0</R20>
								<R21>0</R21>
								<R22>1</R22>
							</CoordinateFrame>
							<float name="CameraFieldOfView">1.22173059</float>
							<Color3 name="ImageColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<float name="ImageTransparency">0</float>
							<Color3 name="LightColor">
								<R>0.549019635</R>
								<G>0.549019635</G>
								<B>0.549019635</B>
							</Color3>
							<Vector3 name="LightDirection">
								<X>-1</X>
								<Y>-1</Y>
								<Z>-1</Z>
							</Vector3>
							<bool name="Active">false</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.0980392173</R>
								<G>0.0980392173</G>
								<B>0.0980392173</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0.00618144963</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">false</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">0</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>195</XO>
								<YS>0</YS>
								<YO>260</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">ViewportFrame</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UICorner" referent="RBX91FFE64BD3D74068BAC7E919784CF912">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBX42039BE7430E455C9F6A2B699F8FA01B">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="Frame" referent="RBX587C225C6F1647FAA9AA5130079ECAEF">
						<Properties>
							<token name="Style">0</token>
							<bool name="Active">false</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<float name="BackgroundTransparency">1</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0.673139453</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">false</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">0</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>90</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">RigType</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="TextLabel" referent="RBXF3E06CE4DA0C4A1E8BE0D9C17AC5D94F">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxassetid://12187365559</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Rig Type</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">20</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0980392173</R>
									<G>0.0980392173</G>
									<B>0.0980392173</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>100</XO>
									<YS>0</YS>
									<YO>20</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextLabel</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBXB0087C64ECE04CD281362F24C7912CEB">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX82ADF19B27A449CA840A8DA83197FDC4">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextButton" referent="RBX86DFC4DC98DC48A88BB11768C7BF3184">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">R6</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="AutoButtonColor">true</bool>
								<Ref name="HoverHapticEffect">null</Ref>
								<bool name="Modal">false</bool>
								<Ref name="PressHapticEffect">null</Ref>
								<bool name="Selected">false</bool>
								<token name="Style">0</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0980392173</R>
									<G>0.0980392173</G>
									<B>0.0980392173</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0.600000024</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>100</XO>
									<YS>0</YS>
									<YO>30</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextButton</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX85450C9EA8FE49588C98E1CDAF56740C">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX75A583E7BF184CB1B625DB6F44BA3F2F">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="UIListLayout" referent="RBX4B1FFD42D46A4E4FA9E21E599E335D95">
							<Properties>
								<token name="HorizontalFlex">0</token>
								<token name="ItemLineAlignment">0</token>
								<UDim name="Padding">
									<S>0</S>
									<O>5</O>
								</UDim>
								<token name="VerticalFlex">0</token>
								<bool name="Wraps">false</bool>
								<token name="FillDirection">1</token>
								<token name="HorizontalAlignment">1</token>
								<token name="SortOrder">2</token>
								<token name="VerticalAlignment">1</token>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIListLayout</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="TextButton" referent="RBX866E19E448954D45BB656BD53F081E48">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">R15</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="AutoButtonColor">true</bool>
								<Ref name="HoverHapticEffect">null</Ref>
								<bool name="Modal">false</bool>
								<Ref name="PressHapticEffect">null</Ref>
								<bool name="Selected">false</bool>
								<token name="Style">0</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0980392173</R>
									<G>0.0980392173</G>
									<B>0.0980392173</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0.600000024</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>100</XO>
									<YS>0</YS>
									<YO>30</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextButton1</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBXC7E94811A3484D43AC762A8252F65DAB">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX91D21D508FF5452C87B615780CA43EC7">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
					</Item>
					<Item class="Frame" referent="RBX596BFB0EE2724ABD86D3F5CCEDAFBF8C">
						<Properties>
							<token name="Style">0</token>
							<bool name="Active">false</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<float name="BackgroundTransparency">1</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0.673139453</XS>
								<XO>0</XO>
								<YS>0.653846145</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">false</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">0</token>
							<UDim2 name="Size">
								<XS>0</XS>
								<XO>100</XO>
								<YS>0</YS>
								<YO>90</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">BodyShape</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="TextLabel" referent="RBX7A8B9324E992457CB7AC6207F616CDB3">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxassetid://12187365559</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Body Shape</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">20</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0980392173</R>
									<G>0.0980392173</G>
									<B>0.0980392173</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>100</XO>
									<YS>0</YS>
									<YO>20</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextLabel</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX9F2C9E96CF57433496C0B87E98E7FED2">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBXB6BED9701EE24F288C9DCD192C05E79D">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextButton" referent="RBX6551D3548DA44F57BD5541E60E9F4BDA">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Classic</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="AutoButtonColor">true</bool>
								<Ref name="HoverHapticEffect">null</Ref>
								<bool name="Modal">false</bool>
								<Ref name="PressHapticEffect">null</Ref>
								<bool name="Selected">false</bool>
								<token name="Style">0</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0980392173</R>
									<G>0.0980392173</G>
									<B>0.0980392173</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0.600000024</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>100</XO>
									<YS>0</YS>
									<YO>30</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextButton</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBXD8530ECEC64948E19850FDD3C012DCF4">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBXB98D129A225349DBB210B4324D25F5F5">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="UIListLayout" referent="RBX6755BA03913C422388EE15A588AEA3E9">
							<Properties>
								<token name="HorizontalFlex">0</token>
								<token name="ItemLineAlignment">0</token>
								<UDim name="Padding">
									<S>0</S>
									<O>5</O>
								</UDim>
								<token name="VerticalFlex">0</token>
								<bool name="Wraps">false</bool>
								<token name="FillDirection">1</token>
								<token name="HorizontalAlignment">1</token>
								<token name="SortOrder">2</token>
								<token name="VerticalAlignment">1</token>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIListLayout</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="TextButton" referent="RBX3D36DA920E6049F2BE2BE7FCA2D2F279">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Your skin</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="AutoButtonColor">true</bool>
								<Ref name="HoverHapticEffect">null</Ref>
								<bool name="Modal">false</bool>
								<Ref name="PressHapticEffect">null</Ref>
								<bool name="Selected">false</bool>
								<token name="Style">0</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0980392173</R>
									<G>0.0980392173</G>
									<B>0.0980392173</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0.600000024</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>100</XO>
									<YS>0</YS>
									<YO>30</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextButton1</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX5288D811426B426EA11DBEDC94DC18BE">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBXACBD445438BC4150A61B50A99AE9747B">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
					</Item>
					<Item class="UICorner" referent="RBX44026DDFB1B549C884B81FCB28745FDC">
						<Properties>
							<UDim name="BottomLeftRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="BottomRightRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="TopLeftRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="TopRightRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UICorner</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="UIStroke" referent="RBXDF7304E9978E4B61B8782155F2FC26B4">
						<Properties>
							<token name="ApplyStrokeMode">1</token>
							<UDim name="BorderOffset">
								<S>0</S>
								<O>0</O>
							</UDim>
							<token name="BorderStrokePosition">0</token>
							<Color3 name="Color">
								<R>0.490196079</R>
								<G>0.490196079</G>
								<B>0.490196079</B>
							</Color3>
							<bool name="Enabled">true</bool>
							<token name="LineJoinMode">0</token>
							<token name="StrokeSizingMode">0</token>
							<float name="Thickness">1</float>
							<float name="Transparency">0.800000012</float>
							<int name="ZIndex">1</int>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIStroke</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
				</Item>
				<Item class="UIPadding" referent="RBXE704F23D4E7841368B69F459D56A0156">
					<Properties>
						<UDim name="PaddingBottom">
							<S>0</S>
							<O>5</O>
						</UDim>
						<UDim name="PaddingLeft">
							<S>0</S>
							<O>5</O>
						</UDim>
						<UDim name="PaddingRight">
							<S>0</S>
							<O>5</O>
						</UDim>
						<UDim name="PaddingTop">
							<S>0</S>
							<O>5</O>
						</UDim>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">UIPadding</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
				</Item>
				<Item class="Frame" referent="RBX360F3567B81A4DB3A72A1360E0679BE0">
					<Properties>
						<token name="Style">0</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>0.0784313753</R>
							<G>0.0784313753</G>
							<B>0.0784313753</B>
						</Color3>
						<float name="BackgroundTransparency">0</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">false</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0</XS>
							<XO>0</XO>
							<YS>0.5</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>1</XS>
							<XO>0</XO>
							<YS>0</YS>
							<YO>270</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">true</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">DP</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
					<Item class="Frame" referent="RBXC8FDF55426EB4479A209873ADC51D53D">
						<Properties>
							<token name="Style">0</token>
							<bool name="Active">false</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<float name="BackgroundTransparency">1</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0.350877196</XS>
								<XO>0</XO>
								<YS>-0.0192307699</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">false</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">0</token>
							<UDim2 name="Size">
								<XS>0.65789479</XS>
								<XO>0</XO>
								<YS>1.03846157</YS>
								<YO>0</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Accessories</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIPadding" referent="RBXDE74F3BB65174BEEA6FA2EF897F4C766">
							<Properties>
								<UDim name="PaddingBottom">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingLeft">
									<S>0</S>
									<O>10</O>
								</UDim>
								<UDim name="PaddingRight">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingTop">
									<S>0</S>
									<O>5</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIPadding</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="Frame" referent="RBX596A9F7F33B849EFB77AC10AA8A7641C">
							<Properties>
								<token name="Style">0</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0784313753</R>
									<G>0.0784313753</G>
									<B>0.0784313753</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>-0.0136986617</XS>
									<XO>0</XO>
									<YS>0.0192307699</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>115</XO>
									<YS>0</YS>
									<YO>255</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">Position</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UIPadding" referent="RBX35A68CFD2801415BB17F50B1A862CB97">
								<Properties>
									<UDim name="PaddingBottom">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingLeft">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingRight">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingTop">
										<S>0</S>
										<O>5</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIPadding</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIListLayout" referent="RBX941F0535E6C047B6BAEC61B864B8A9E1">
								<Properties>
									<token name="HorizontalFlex">0</token>
									<token name="ItemLineAlignment">0</token>
									<UDim name="Padding">
										<S>0</S>
										<O>5</O>
									</UDim>
									<token name="VerticalFlex">0</token>
									<bool name="Wraps">false</bool>
									<token name="FillDirection">1</token>
									<token name="HorizontalAlignment">1</token>
									<token name="SortOrder">2</token>
									<token name="VerticalAlignment">1</token>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIListLayout</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="TextLabel" referent="RBX7D03B0CAB6034EF58E6D103B2B734AE0">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">X Position</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">1</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">XPositionLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX07C50206D26D4615A93D3E2DB885AB6A">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX04B3978A127A4D9AA91F9A0EE6E8249C">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextBox" referent="RBX0F5861714DE849AD909986AECF396D73">
								<Properties>
									<bool name="ClearTextOnFocus">true</bool>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.5</R>
										<G>0.5</G>
										<B>0.5</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">2</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">XPositionBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXE271F3C66968453CA2EF7493C4A35CB7">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX1F58DBBE72164732901D4E8AA41D48FA">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextLabel" referent="RBXD073949BE14A41C0ACEE3B1A689766DE">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Y Position</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">3</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">YPositionLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXCB71FA2CE6544CD7BD67600F2BD0F4CF">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXFBABC80EA93941AE98CBC980BE695C68">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextBox" referent="RBX98D06DE476C842499D55A4AA815C165C">
								<Properties>
									<bool name="ClearTextOnFocus">true</bool>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.5</R>
										<G>0.5</G>
										<B>0.5</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">4</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">YPositionBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX66CF1DBE043C453FA5CE7973B410BD91">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXBF474E1786044D528D6E4E3119696027">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextLabel" referent="RBXE6E6FAC432E845F88FC2BCEA121CB05C">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Z Position</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">5</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">ZPositionLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX6715F1BC528841A98CC9C14830BD14B1">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXB31B79C78E7D421894BE679CAC46DFCE">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextBox" referent="RBX80FD0835BF88423FA03E329C495D28E7">
								<Properties>
									<bool name="ClearTextOnFocus">true</bool>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.5</R>
										<G>0.5</G>
										<B>0.5</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">6</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">ZPositionBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXB835E8F7296F4975BA18B8F322EE7C4E">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX8082FD9177154659950A9FE2FFE959D0">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextButton" referent="RBX4836F14659FC4A48A145874AC6B46636">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Apply values</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="AutoButtonColor">true</bool>
									<Ref name="HoverHapticEffect">null</Ref>
									<bool name="Modal">false</bool>
									<Ref name="PressHapticEffect">null</Ref>
									<bool name="Selected">false</bool>
									<token name="Style">0</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0980392173</R>
										<G>0.0980392173</G>
										<B>0.0980392173</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">7</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">Apply</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX778408F5D81343DCAB912D0F741E92FE">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX6EA6E39E412A4C7880EDDD2AA424DC23">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="UICorner" referent="RBXE8D87B596D9643EBBA1FD57047BCA1E6">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX875BE1478A1E42A292C66057F2A91874">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="UIListLayout" referent="RBX214F8723384B483E886B950868989440">
							<Properties>
								<token name="HorizontalFlex">0</token>
								<token name="ItemLineAlignment">0</token>
								<UDim name="Padding">
									<S>0</S>
									<O>5</O>
								</UDim>
								<token name="VerticalFlex">0</token>
								<bool name="Wraps">false</bool>
								<token name="FillDirection">0</token>
								<token name="HorizontalAlignment">1</token>
								<token name="SortOrder">2</token>
								<token name="VerticalAlignment">1</token>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIListLayout</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="Frame" referent="RBX13A50A3127504161B801E13B64CC60DE">
							<Properties>
								<token name="Style">0</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0784313753</R>
									<G>0.0784313753</G>
									<B>0.0784313753</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>-0.0136986617</XS>
									<XO>0</XO>
									<YS>0.0192307699</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>115</XO>
									<YS>0</YS>
									<YO>255</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">Rotation</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UIPadding" referent="RBX478F4FD125FA40F69F1CB859E5FD6162">
								<Properties>
									<UDim name="PaddingBottom">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingLeft">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingRight">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingTop">
										<S>0</S>
										<O>5</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIPadding</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIListLayout" referent="RBXE00E33635E7A45BBB13CB7B836E72719">
								<Properties>
									<token name="HorizontalFlex">0</token>
									<token name="ItemLineAlignment">0</token>
									<UDim name="Padding">
										<S>0</S>
										<O>5</O>
									</UDim>
									<token name="VerticalFlex">0</token>
									<bool name="Wraps">false</bool>
									<token name="FillDirection">1</token>
									<token name="HorizontalAlignment">1</token>
									<token name="SortOrder">2</token>
									<token name="VerticalAlignment">1</token>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIListLayout</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="TextLabel" referent="RBXF7CF7053159F43EB9CC2F383C13D668A">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">X Rotation</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">1</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">XRotationLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX94F68BC1B0C1440DA4F1DE1E16D41F08">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXA5051ECD47794B58A0DE494AFB5CA3C3">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke1</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextBox" referent="RBX15A4A6A101004C4A91A0037BEF7263C4">
								<Properties>
									<bool name="ClearTextOnFocus">true</bool>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.5</R>
										<G>0.5</G>
										<B>0.5</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">2</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">XRotationBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX368E0140FB594DE19FA8BCAFC90A571A">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXD12B0A3FF3BB47B5BD99207141F8884D">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextLabel" referent="RBX46D85FA273C344D8A58F927AA3C5CD01">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Y Rotation</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">3</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">YRotationLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX796825F84D3942C7903F6B3613CF62DD">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX2BCBA85DD5B144F7AA186A357881F8A1">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextBox" referent="RBXA9EA48E74D924FBB893B8995F4143645">
								<Properties>
									<bool name="ClearTextOnFocus">true</bool>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.5</R>
										<G>0.5</G>
										<B>0.5</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">4</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">YRotationBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXEBA8F2556D3A44ECB0AC0A5ACAF2A44D">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX1482467EFCA042958DB9CA1E87A8EE9C">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextLabel" referent="RBXA14EF7F11A13446C8A83D00E29BF5F98">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Z Rotation</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">5</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">ZRotationLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX11CB564538F549ABAD295BD13A5379BF">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX2ACAF1D57B674910AC5C84282CD9FBF5">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextBox" referent="RBX7C99A97C0D0246859E8F8372C50BF453">
								<Properties>
									<bool name="ClearTextOnFocus">true</bool>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.5</R>
										<G>0.5</G>
										<B>0.5</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">6</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">ZRotationBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX59808F5769E24D99A225E1A28EF2E2F1">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXFADD7A32EDBB427683F09E527D4EDBC4">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextButton" referent="RBX7A9D5D6D31864409BAD67FF8873D90F4">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Apply values</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="AutoButtonColor">true</bool>
									<Ref name="HoverHapticEffect">null</Ref>
									<bool name="Modal">false</bool>
									<Ref name="PressHapticEffect">null</Ref>
									<bool name="Selected">false</bool>
									<token name="Style">0</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0980392173</R>
										<G>0.0980392173</G>
										<B>0.0980392173</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">7</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">Apply</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXD1A72CA29ED84399BC8068609E9B67FD">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX7829938AD0CE46CA911ED3516D070A3A">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="UIStroke" referent="RBX8FBD324B37074CBE916428B229D6B02E">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="Frame" referent="RBX68586EFF382A45A1B5C37CEC156420B1">
							<Properties>
								<token name="Style">0</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0784313753</R>
									<G>0.0784313753</G>
									<B>0.0784313753</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>-0.0136986617</XS>
									<XO>0</XO>
									<YS>0.0192307699</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>115</XO>
									<YS>0</YS>
									<YO>255</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">Scale</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UIPadding" referent="RBX214625B641A34AB9929ED9465152738E">
								<Properties>
									<UDim name="PaddingBottom">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingLeft">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingRight">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingTop">
										<S>0</S>
										<O>5</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIPadding</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIListLayout" referent="RBX0C7C4BFEEF324DC4B0EDBD033337F45C">
								<Properties>
									<token name="HorizontalFlex">0</token>
									<token name="ItemLineAlignment">0</token>
									<UDim name="Padding">
										<S>0</S>
										<O>5</O>
									</UDim>
									<token name="VerticalFlex">0</token>
									<bool name="Wraps">false</bool>
									<token name="FillDirection">1</token>
									<token name="HorizontalAlignment">1</token>
									<token name="SortOrder">2</token>
									<token name="VerticalAlignment">1</token>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIListLayout</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="TextLabel" referent="RBXDA57A8A5952B4DBC8AF1D50BC313BD10">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Scale</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">1</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">ScaleLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX028A186C76BB40AA8483A2BB54C0EA38">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX9078585F676B460C97C15C204C2A4637">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke1</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextBox" referent="RBX9BA7E874A4CC497E89F95A160FFF33EC">
								<Properties>
									<bool name="ClearTextOnFocus">true</bool>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.5</R>
										<G>0.5</G>
										<B>0.5</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">2</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">ScaleBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXD6CE20ADDA22443EAF3D4F8A8BBCF397">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX536D406045794E36A2FD7F2AF9B3D8C6">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextButton" referent="RBXDC6B2325851045028557EE3058EFA919">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Apply values</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="AutoButtonColor">true</bool>
									<Ref name="HoverHapticEffect">null</Ref>
									<bool name="Modal">false</bool>
									<Ref name="PressHapticEffect">null</Ref>
									<bool name="Selected">false</bool>
									<token name="Style">0</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0980392173</R>
										<G>0.0980392173</G>
										<B>0.0980392173</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">7</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">Apply</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX2648586E80D44A35BBF1DB09011A119B">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXF5EE454AEC094CD59EA23EAEFE266129">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="UIStroke" referent="RBXF040EC741B2B419C9FF79CB0EE81AF85">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
					</Item>
					<Item class="UIPadding" referent="RBXD2B7E2A15E6041DFB1A355CAE9011D1B">
						<Properties>
							<UDim name="PaddingBottom">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingLeft">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingRight">
								<S>0</S>
								<O>5</O>
							</UDim>
							<UDim name="PaddingTop">
								<S>0</S>
								<O>5</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIPadding</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="Frame" referent="RBX1FBE43906FA04BE19E3AC8F2D66F155A">
						<Properties>
							<token name="Style">0</token>
							<bool name="Active">false</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<float name="BackgroundTransparency">1</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">false</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">0</token>
							<UDim2 name="Size">
								<XS>1</XS>
								<XO>0</XO>
								<YS>1</YS>
								<YO>0</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Settings</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIPadding" referent="RBX4EC60810208E4C81A0FDA6D144D84694">
							<Properties>
								<UDim name="PaddingBottom">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingLeft">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingRight">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingTop">
									<S>0</S>
									<O>5</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIPadding</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="Frame" referent="RBXECF08E45378E47EBB49A68C4B2D70A4F">
							<Properties>
								<token name="Style">0</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<float name="BackgroundTransparency">1</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>125</XO>
									<YS>0</YS>
									<YO>165</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">ConfigSettings</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="TextLabel" referent="RBX2BF00904D9614225A7700751A763845B">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Config</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">20</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0784313753</R>
										<G>0.0784313753</G>
										<B>0.0784313753</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">1</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">ConfigLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UIStroke" referent="RBX74E2B69A320B40E0B4876F004FFCA8D1">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="UIListLayout" referent="RBX96C416547F344B14A467C730F30C0BCB">
								<Properties>
									<token name="HorizontalFlex">0</token>
									<token name="ItemLineAlignment">0</token>
									<UDim name="Padding">
										<S>0</S>
										<O>5</O>
									</UDim>
									<token name="VerticalFlex">0</token>
									<bool name="Wraps">false</bool>
									<token name="FillDirection">1</token>
									<token name="HorizontalAlignment">1</token>
									<token name="SortOrder">2</token>
									<token name="VerticalAlignment">1</token>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIListLayout</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="TextButton" referent="RBXE74D36871C354737A103CA488ED23FE6">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Create config</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">25</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">true</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="AutoButtonColor">true</bool>
									<Ref name="HoverHapticEffect">null</Ref>
									<bool name="Modal">false</bool>
									<Ref name="PressHapticEffect">null</Ref>
									<bool name="Selected">false</bool>
									<token name="Style">0</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0980392173</R>
										<G>0.0980392173</G>
										<B>0.0980392173</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">3</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">CreateConfigButton</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXC16F9E097D874839A93DAE409ADD3E2B">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX968A7B1E6A484C2FA0E7B7FCF7FF6910">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextButton" referent="RBX6614CDAF39154BEA84FA94BADC079262">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Load config</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">25</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">true</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="AutoButtonColor">true</bool>
									<Ref name="HoverHapticEffect">null</Ref>
									<bool name="Modal">false</bool>
									<Ref name="PressHapticEffect">null</Ref>
									<bool name="Selected">false</bool>
									<token name="Style">0</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0980392173</R>
										<G>0.0980392173</G>
										<B>0.0980392173</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">5</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">LoadConfigButton</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXA50B3918292048169620170378B0BBDB">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX40CA09C2187A4DB1BF7096958EEAD738">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextBox" referent="RBX89B7BFB731E742548A2F00AF1FA76EBE">
								<Properties>
									<bool name="ClearTextOnFocus">false</bool>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.498039216</R>
										<G>0.498039216</G>
										<B>0.498039216</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0980392173</R>
										<G>0.0980392173</G>
										<B>0.0980392173</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">2</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">CreateNameBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX8CD7D6BF094544B7814CCE2A14464BF1">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXEA3B87E4341E4F55A5D3E628A4A0BD12">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextLabel" referent="RBX80023492F7114AF9AEE323E90311F625">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Create</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">20</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0784313753</R>
										<G>0.0784313753</G>
										<B>0.0784313753</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">1</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">CreateLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UIStroke" referent="RBX4C4A262181A24DB4840F925E7611F157">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextButton" referent="RBX1C940677166B42809924FCEFEF30E60B">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Overwrite config</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">25</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">true</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="AutoButtonColor">true</bool>
									<Ref name="HoverHapticEffect">null</Ref>
									<bool name="Modal">false</bool>
									<Ref name="PressHapticEffect">null</Ref>
									<bool name="Selected">false</bool>
									<token name="Style">0</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0980392173</R>
										<G>0.0980392173</G>
										<B>0.0980392173</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">5</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">OverwriteConfigButton</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX50168AEA41D14202835A6400DA096673">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX0EEB26C899AC4684A3A6A841D78488BD">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
						</Item>
						<Item class="Frame" referent="RBXF0311A1DE319449692F2682CE49B694F">
							<Properties>
								<token name="Style">0</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<float name="BackgroundTransparency">1</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0.716000021</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>125</XO>
									<YS>0</YS>
									<YO>75</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UISettings</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="TextLabel" referent="RBX9D70C9F0A6BC45AC82092DF811652DC8">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">UI Settings</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">true</bool>
									<float name="TextSize">20</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">true</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0784313753</R>
										<G>0.0784313753</G>
										<B>0.0784313753</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">1</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UISettingsLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBX954930F6F1B144C9BA6822994B85C9F9">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXAACA8E2AB66F4275B16289F687818C69">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="UIListLayout" referent="RBX6B9C602B13904C4E8128E088517D3D32">
								<Properties>
									<token name="HorizontalFlex">0</token>
									<token name="ItemLineAlignment">0</token>
									<UDim name="Padding">
										<S>0</S>
										<O>5</O>
									</UDim>
									<token name="VerticalFlex">0</token>
									<bool name="Wraps">false</bool>
									<token name="FillDirection">1</token>
									<token name="HorizontalAlignment">1</token>
									<token name="SortOrder">2</token>
									<token name="VerticalAlignment">1</token>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIListLayout</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="TextBox" referent="RBX519981DC7ED24B43A7F83EF376D9786F">
								<Properties>
									<bool name="ClearTextOnFocus">false</bool>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<bool name="MultiLine">false</bool>
									<string name="OpenTypeFeatures"></string>
									<Color3 name="PlaceholderColor3">
										<R>0.498039216</R>
										<G>0.498039216</G>
										<B>0.498039216</B>
									</Color3>
									<string name="PlaceholderText"></string>
									<bool name="RichText">false</bool>
									<bool name="ShowNativeInput">true</bool>
									<string name="Text"></string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextEditable">true</bool>
									<bool name="TextScaled">true</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">true</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0980392173</R>
										<G>0.0980392173</G>
										<B>0.0980392173</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">2</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">true</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">1</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>25</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIScaleBox</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXD5BDB64C416843F3A51E68DC9D0BAEEB">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX09BE9D2912A44550BFFF8FB9ED14F478">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
							<Item class="TextLabel" referent="RBX2B7BBEA9B1404F4F94AD0DFE94FE1CF0">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxassetid://12187365559</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">UI Scale</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">true</bool>
									<float name="TextSize">20</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">true</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.0784313753</R>
										<G>0.0784313753</G>
										<B>0.0784313753</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">1</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>0</XS>
										<XO>125</XO>
										<YS>0</YS>
										<YO>20</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIScaleLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="UICorner" referent="RBXAFBBA696FC2A4D22B653062B236EDA9F">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXF679D1E6DDB74410B5E0E2D20F8CF8B2">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
						</Item>
					</Item>
					<Item class="UICorner" referent="RBX682103B161E0430CB9123B7248B42192">
						<Properties>
							<UDim name="BottomLeftRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="BottomRightRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="TopLeftRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="TopRightRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UICorner</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="Frame" referent="RBX3B03D455431A468FA5597293E89B4840">
						<Properties>
							<token name="Style">0</token>
							<bool name="Active">false</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>0.0784313753</R>
								<G>0.0784313753</G>
								<B>0.0784313753</B>
							</Color3>
							<float name="BackgroundTransparency">0</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">false</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">0</token>
							<UDim2 name="Size">
								<XS>0.175438598</XS>
								<XO>100</XO>
								<YS>1</YS>
								<YO>0</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">false</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">Create</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIListLayout" referent="RBX916C52CC54EB4EDFA88B1ADDFE043C71">
							<Properties>
								<token name="HorizontalFlex">0</token>
								<token name="ItemLineAlignment">0</token>
								<UDim name="Padding">
									<S>0</S>
									<O>5</O>
								</UDim>
								<token name="VerticalFlex">0</token>
								<bool name="Wraps">false</bool>
								<token name="FillDirection">1</token>
								<token name="HorizontalAlignment">0</token>
								<token name="SortOrder">2</token>
								<token name="VerticalAlignment">1</token>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIListLayout</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIPadding" referent="RBX2729C9BB972E4EACB44D4FB8DEC1B48A">
							<Properties>
								<UDim name="PaddingBottom">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingLeft">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingRight">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingTop">
									<S>0</S>
									<O>5</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIPadding</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="TextBox" referent="RBXB4C2E361552A476EA84D49AB7F4AD978">
							<Properties>
								<bool name="ClearTextOnFocus">true</bool>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<bool name="MultiLine">false</bool>
								<string name="OpenTypeFeatures"></string>
								<Color3 name="PlaceholderColor3">
									<R>0.5</R>
									<G>0.5</G>
									<B>0.5</B>
								</Color3>
								<string name="PlaceholderText"></string>
								<bool name="RichText">false</bool>
								<bool name="ShowNativeInput">true</bool>
								<string name="Text"></string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextEditable">true</bool>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.137254909</R>
									<G>0.137254909</G>
									<B>0.137254909</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">2</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>25</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">NameBox</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBXF063721F95C347CFA1B2440CB8DE3536">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX45ABEE8572364A75A392B18AA570CF93">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextLabel" referent="RBX8BB40BC6404141BA91F255B278E5D0E0">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Name</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.117647059</R>
									<G>0.117647059</G>
									<B>0.117647059</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">1</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>20</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">NameLabel</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX4996F9773D0C4BE08D05406A436A755F">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX5AAFD3D046224CF39D5A7B909869FD75">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextLabel" referent="RBX5918BB8D8E4F4A79A4571F88279533EB">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Weld</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.117647059</R>
									<G>0.117647059</G>
									<B>0.117647059</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">3</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>20</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">WeldLabel</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBXF058D72012464A41BA438B1DF311350D">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX337539342D2D406A90865178CD8B2A25">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextBox" referent="RBX047F2F5ABD16461885D3DFB1785B26C4">
							<Properties>
								<bool name="ClearTextOnFocus">true</bool>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<bool name="MultiLine">false</bool>
								<string name="OpenTypeFeatures"></string>
								<Color3 name="PlaceholderColor3">
									<R>0.5</R>
									<G>0.5</G>
									<B>0.5</B>
								</Color3>
								<string name="PlaceholderText"></string>
								<bool name="RichText">false</bool>
								<bool name="ShowNativeInput">true</bool>
								<string name="Text"></string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextEditable">true</bool>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.137254909</R>
									<G>0.137254909</G>
									<B>0.137254909</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">false</bool>
								<int name="LayoutOrder">4</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>25</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">WeldBox</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="TextLabel" referent="RBX64100E3CFBFE422082DE3B4D1A4B7BD9">
								<Properties>
									<Font name="FontFace">
										<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
										<Weight>400</Weight>
										<Style>Normal</Style>
										<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
									</Font>
									<float name="LineHeight">1</float>
									<string name="LocalizationMatchIdentifier"></string>
									<string name="LocalizationMatchedSourceText"></string>
									<int name="MaxVisibleGraphemes">-1</int>
									<string name="OpenTypeFeatures"></string>
									<bool name="RichText">false</bool>
									<string name="Text">Head</string>
									<Color3 name="TextColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<token name="TextDirection">0</token>
									<bool name="TextScaled">false</bool>
									<float name="TextSize">14</float>
									<Color3 name="TextStrokeColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<float name="TextStrokeTransparency">1</float>
									<float name="TextTransparency">0</float>
									<token name="TextTruncate">0</token>
									<bool name="TextWrapped">false</bool>
									<token name="TextXAlignment">2</token>
									<token name="TextYAlignment">1</token>
									<bool name="Active">true</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>1</R>
										<G>1</G>
										<B>1</B>
									</Color3>
									<float name="BackgroundTransparency">1</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">0</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>1</YS>
										<YO>0</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">TextLabel</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UICorner" referent="RBXFA56AD26A18449F690B8C065A14E8D6D">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX485AB0691C7A499A98AC3D565688CC86">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextLabel" referent="RBXA71FB0C357164764AE0E6ACB249C595D">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Mesh (AssetID)</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.117647059</R>
									<G>0.117647059</G>
									<B>0.117647059</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">5</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>1.39600003</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>20</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">MeshLabel</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX12E4F290236A4455BE6943F54BE44960">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX7005698CA34C4345AC259A2EE2827545">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextBox" referent="RBXD87D1882057446D9827F71BFBCDFADD5">
							<Properties>
								<bool name="ClearTextOnFocus">true</bool>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<bool name="MultiLine">false</bool>
								<string name="OpenTypeFeatures"></string>
								<Color3 name="PlaceholderColor3">
									<R>0.5</R>
									<G>0.5</G>
									<B>0.5</B>
								</Color3>
								<string name="PlaceholderText"></string>
								<bool name="RichText">false</bool>
								<bool name="ShowNativeInput">true</bool>
								<string name="Text"></string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextEditable">true</bool>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.137254909</R>
									<G>0.137254909</G>
									<B>0.137254909</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">6</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>25</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">MeshBox</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX2518223D82E1479795AA35AAA8B12AA4">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBXE947CFEF6EB346D2AB6D0E240E143792">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextLabel" referent="RBX74D9553C9DE044059967C20ABB495FC9">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">TextureID</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.117647059</R>
									<G>0.117647059</G>
									<B>0.117647059</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">7</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>20</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextureLabel</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX80FB4BFC994C4DA3A67A148B4B848277">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX05BEB17E536B4E5A9ECA343933AE88E8">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextBox" referent="RBX3DE0431B3E1B4238B558023A7EC7F0DF">
							<Properties>
								<bool name="ClearTextOnFocus">true</bool>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<bool name="MultiLine">false</bool>
								<string name="OpenTypeFeatures"></string>
								<Color3 name="PlaceholderColor3">
									<R>0.5</R>
									<G>0.5</G>
									<B>0.5</B>
								</Color3>
								<string name="PlaceholderText"></string>
								<bool name="RichText">false</bool>
								<bool name="ShowNativeInput">true</bool>
								<string name="Text"></string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextEditable">true</bool>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.137254909</R>
									<G>0.137254909</G>
									<B>0.137254909</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">8</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>25</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextureBox</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBXE4224F0DAFAC45F98330E7D1090B988E">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBXDC984B271D624C1F8A6C93A847C47A89">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextButton" referent="RBX8B18D6D658C54DA2814DCAC9C1DFCDB7">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxasset://fonts/families/SourceSansPro.json</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
									<CachedFaceId><url>rbxasset://fonts/SourceSansPro-Regular.ttf</url></CachedFaceId>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Create</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="AutoButtonColor">true</bool>
								<Ref name="HoverHapticEffect">null</Ref>
								<bool name="Modal">false</bool>
								<Ref name="PressHapticEffect">null</Ref>
								<bool name="Selected">false</bool>
								<token name="Style">0</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.117647059</R>
									<G>0.117647059</G>
									<B>0.117647059</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">10</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>30</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextButton</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX155175A521174F628B4C12B3369D8AA9">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX43F2DAFF62144433AAD2B180F08117C7">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="UICorner" referent="RBX324B430605DF43A4B1927D7D7EE875D4">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIStroke" referent="RBXF1472A3BEFE7420DBFB47F7475CF116C">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="UICorner" referent="RBX62B9543A803C4E728749B5AFED2059B1">
						<Properties>
							<UDim name="BottomLeftRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="BottomRightRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="TopLeftRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="TopRightRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UICorner</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
					<Item class="UIStroke" referent="RBXB2622C6FF8EA48C28851EEA47CFF6DA7">
						<Properties>
							<token name="ApplyStrokeMode">1</token>
							<UDim name="BorderOffset">
								<S>0</S>
								<O>0</O>
							</UDim>
							<token name="BorderStrokePosition">0</token>
							<Color3 name="Color">
								<R>0.490196079</R>
								<G>0.490196079</G>
								<B>0.490196079</B>
							</Color3>
							<bool name="Enabled">true</bool>
							<token name="LineJoinMode">0</token>
							<token name="StrokeSizingMode">0</token>
							<float name="Thickness">1</float>
							<float name="Transparency">0.800000012</float>
							<int name="ZIndex">1</int>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UIStroke</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
				</Item>
				<Item class="Frame" referent="RBXA4EEFD72734743E2B973F478671960DA">
					<Properties>
						<token name="Style">0</token>
						<bool name="Active">false</bool>
						<Vector2 name="AnchorPoint">
							<X>0</X>
							<Y>0</Y>
						</Vector2>
						<token name="AutomaticSize">0</token>
						<Color3 name="BackgroundColor3">
							<R>0.0784313753</R>
							<G>0.0784313753</G>
							<B>0.0784313753</B>
						</Color3>
						<float name="BackgroundTransparency">0</float>
						<Color3 name="BorderColor3">
							<R>0</R>
							<G>0</G>
							<B>0</B>
						</Color3>
						<token name="BorderMode">0</token>
						<int name="BorderSizePixel">0</int>
						<bool name="ClipsDescendants">false</bool>
						<bool name="Draggable">false</bool>
						<bool name="Interactable">true</bool>
						<int name="LayoutOrder">0</int>
						<Ref name="NextSelectionDown">null</Ref>
						<Ref name="NextSelectionLeft">null</Ref>
						<Ref name="NextSelectionRight">null</Ref>
						<Ref name="NextSelectionUp">null</Ref>
						<UDim2 name="Position">
							<XS>0</XS>
							<XO>0</XO>
							<YS>0</YS>
							<YO>0</YO>
						</UDim2>
						<float name="Rotation">0</float>
						<bool name="Selectable">false</bool>
						<Ref name="SelectionImageObject">null</Ref>
						<int name="SelectionOrder">0</int>
						<token name="Sink">0</token>
						<UDim2 name="Size">
							<XS>0</XS>
							<XO>255</XO>
							<YS>0</YS>
							<YO>270</YO>
						</UDim2>
						<token name="SizeConstraint">0</token>
						<bool name="Visible">true</bool>
						<int name="ZIndex">1</int>
						<bool name="AutoLocalize">true</bool>
						<Ref name="RootLocalizationTable">null</Ref>
						<token name="SelectionBehaviorDown">0</token>
						<token name="SelectionBehaviorLeft">0</token>
						<token name="SelectionBehaviorRight">0</token>
						<token name="SelectionBehaviorUp">0</token>
						<bool name="SelectionGroup">false</bool>
						<BinaryString name="AttributesSerialize"></BinaryString>
						<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
						<bool name="DefinesCapabilities">false</bool>
						<string name="Name">Explorer</string>
						<BinaryString name="SerializedOverrides"></BinaryString>
						<int64 name="SourceAssetId">-1</int64>
						<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
					</Properties>
					<Item class="Frame" referent="RBX1C1D9445DA6D471B8239494F71AA29C5">
						<Properties>
							<token name="Style">0</token>
							<bool name="Active">false</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<float name="BackgroundTransparency">1</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">false</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">0</token>
							<UDim2 name="Size">
								<XS>1</XS>
								<XO>0</XO>
								<YS>1</YS>
								<YO>0</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">false</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">ObjectExplorer</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIListLayout" referent="RBX27F9E672D55F4A978A1D9DBA71B50697">
							<Properties>
								<token name="HorizontalFlex">0</token>
								<token name="ItemLineAlignment">0</token>
								<UDim name="Padding">
									<S>0</S>
									<O>5</O>
								</UDim>
								<token name="VerticalFlex">0</token>
								<bool name="Wraps">false</bool>
								<token name="FillDirection">1</token>
								<token name="HorizontalAlignment">0</token>
								<token name="SortOrder">2</token>
								<token name="VerticalAlignment">1</token>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIListLayout</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIPadding" referent="RBX696BE26C61744DD28346956E2AA810A0">
							<Properties>
								<UDim name="PaddingBottom">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingLeft">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingRight">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingTop">
									<S>0</S>
									<O>5</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIPadding</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="Frame" referent="RBX00D2853292EF4AC59939589101D373B4">
							<Properties>
								<token name="Style">0</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<float name="BackgroundTransparency">1</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">2</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>-0.0204081628</XS>
									<XO>0</XO>
									<YS>0.0961538479</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>255</XO>
									<YS>0</YS>
									<YO>205</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">Frame</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UIListLayout" referent="RBXA77FA8E8E590431FAC0DD063FBD4F55E">
								<Properties>
									<token name="HorizontalFlex">0</token>
									<token name="ItemLineAlignment">0</token>
									<UDim name="Padding">
										<S>0</S>
										<O>5</O>
									</UDim>
									<token name="VerticalFlex">0</token>
									<bool name="Wraps">false</bool>
									<token name="FillDirection">1</token>
									<token name="HorizontalAlignment">0</token>
									<token name="SortOrder">2</token>
									<token name="VerticalAlignment">1</token>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIListLayout</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIPadding" referent="RBXE90C2C68CC18424DAEAEC5E0B0095EB6">
								<Properties>
									<UDim name="PaddingBottom">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingLeft">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingRight">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingTop">
										<S>0</S>
										<O>5</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIPadding</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="Frame" referent="RBXA7296C95E19F450BA7601EDB56EDC65C">
								<Properties>
									<token name="Style">0</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">0</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0.111111119</YS>
										<YO>0</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">Object</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="TextLabel" referent="RBXC7826C66A4F04720B54C923C6110FC80">
									<Properties>
										<Font name="FontFace">
											<Family><url>rbxassetid://12187365559</url></Family>
											<Weight>400</Weight>
											<Style>Normal</Style>
										</Font>
										<float name="LineHeight">1</float>
										<string name="LocalizationMatchIdentifier"></string>
										<string name="LocalizationMatchedSourceText"></string>
										<int name="MaxVisibleGraphemes">-1</int>
										<string name="OpenTypeFeatures"></string>
										<bool name="RichText">false</bool>
										<string name="Text">Accessoary Name</string>
										<Color3 name="TextColor3">
											<R>1</R>
											<G>1</G>
											<B>1</B>
										</Color3>
										<token name="TextDirection">0</token>
										<bool name="TextScaled">true</bool>
										<float name="TextSize">14</float>
										<Color3 name="TextStrokeColor3">
											<R>0</R>
											<G>0</G>
											<B>0</B>
										</Color3>
										<float name="TextStrokeTransparency">1</float>
										<float name="TextTransparency">0</float>
										<token name="TextTruncate">0</token>
										<bool name="TextWrapped">true</bool>
										<token name="TextXAlignment">2</token>
										<token name="TextYAlignment">1</token>
										<bool name="Active">false</bool>
										<Vector2 name="AnchorPoint">
											<X>0</X>
											<Y>0</Y>
										</Vector2>
										<token name="AutomaticSize">0</token>
										<Color3 name="BackgroundColor3">
											<R>1</R>
											<G>1</G>
											<B>1</B>
										</Color3>
										<float name="BackgroundTransparency">1</float>
										<Color3 name="BorderColor3">
											<R>0</R>
											<G>0</G>
											<B>0</B>
										</Color3>
										<token name="BorderMode">0</token>
										<int name="BorderSizePixel">0</int>
										<bool name="ClipsDescendants">false</bool>
										<bool name="Draggable">false</bool>
										<bool name="Interactable">true</bool>
										<int name="LayoutOrder">0</int>
										<Ref name="NextSelectionDown">null</Ref>
										<Ref name="NextSelectionLeft">null</Ref>
										<Ref name="NextSelectionRight">null</Ref>
										<Ref name="NextSelectionUp">null</Ref>
										<UDim2 name="Position">
											<XS>0</XS>
											<XO>0</XO>
											<YS>0</YS>
											<YO>0</YO>
										</UDim2>
										<float name="Rotation">0</float>
										<bool name="Selectable">false</bool>
										<Ref name="SelectionImageObject">null</Ref>
										<int name="SelectionOrder">0</int>
										<token name="Sink">0</token>
										<UDim2 name="Size">
											<XS>1</XS>
											<XO>0</XO>
											<YS>1</YS>
											<YO>0</YO>
										</UDim2>
										<token name="SizeConstraint">0</token>
										<bool name="Visible">true</bool>
										<int name="ZIndex">1</int>
										<bool name="AutoLocalize">true</bool>
										<Ref name="RootLocalizationTable">null</Ref>
										<token name="SelectionBehaviorDown">0</token>
										<token name="SelectionBehaviorLeft">0</token>
										<token name="SelectionBehaviorRight">0</token>
										<token name="SelectionBehaviorUp">0</token>
										<bool name="SelectionGroup">false</bool>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">Object</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UICorner" referent="RBX98F19FC3388C442CBB6A2BC19F621E5C">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBXDD8EC77E697F4F0FA6B3D4594ED7BF6A">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
						</Item>
						<Item class="TextButton" referent="RBX787A8F0A0B384FB39E041C1B6B3D36A9">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxassetid://12187365559</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Delete Selected Object</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">true</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">true</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="AutoButtonColor">true</bool>
								<Ref name="HoverHapticEffect">null</Ref>
								<bool name="Modal">false</bool>
								<Ref name="PressHapticEffect">null</Ref>
								<bool name="Selected">false</bool>
								<token name="Style">0</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.117647059</R>
									<G>0.117647059</G>
									<B>0.117647059</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">3</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>25</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextButton</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBXA8A2F00DB6C941F9B2D9FEA4369864CD">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX0F99F91BBFC1407480197A0F1A8DB610">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextLabel" referent="RBX989B438FD537407999524AF68EDB4CBC">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxassetid://12187365559</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Object explorer</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">true</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">true</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0784313753</R>
									<G>0.0784313753</G>
									<B>0.0784313753</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>20</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextLabel</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX5A77D9D76E3E466C89367F3352C9B335">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBXDE62B2CE3FDC41C9BD1964A80F610801">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="UIStroke" referent="RBX20F39A778AB146A09E8D99BCE6F1C111">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="Frame" referent="RBXBE78EA684A394AF1A9DB3FE4BE15A05B">
						<Properties>
							<token name="Style">0</token>
							<bool name="Active">false</bool>
							<Vector2 name="AnchorPoint">
								<X>0</X>
								<Y>0</Y>
							</Vector2>
							<token name="AutomaticSize">0</token>
							<Color3 name="BackgroundColor3">
								<R>1</R>
								<G>1</G>
								<B>1</B>
							</Color3>
							<float name="BackgroundTransparency">1</float>
							<Color3 name="BorderColor3">
								<R>0</R>
								<G>0</G>
								<B>0</B>
							</Color3>
							<token name="BorderMode">0</token>
							<int name="BorderSizePixel">0</int>
							<bool name="ClipsDescendants">false</bool>
							<bool name="Draggable">false</bool>
							<bool name="Interactable">true</bool>
							<int name="LayoutOrder">0</int>
							<Ref name="NextSelectionDown">null</Ref>
							<Ref name="NextSelectionLeft">null</Ref>
							<Ref name="NextSelectionRight">null</Ref>
							<Ref name="NextSelectionUp">null</Ref>
							<UDim2 name="Position">
								<XS>0</XS>
								<XO>0</XO>
								<YS>0</YS>
								<YO>0</YO>
							</UDim2>
							<float name="Rotation">0</float>
							<bool name="Selectable">false</bool>
							<Ref name="SelectionImageObject">null</Ref>
							<int name="SelectionOrder">0</int>
							<token name="Sink">0</token>
							<UDim2 name="Size">
								<XS>1</XS>
								<XO>0</XO>
								<YS>1</YS>
								<YO>0</YO>
							</UDim2>
							<token name="SizeConstraint">0</token>
							<bool name="Visible">true</bool>
							<int name="ZIndex">1</int>
							<bool name="AutoLocalize">true</bool>
							<Ref name="RootLocalizationTable">null</Ref>
							<token name="SelectionBehaviorDown">0</token>
							<token name="SelectionBehaviorLeft">0</token>
							<token name="SelectionBehaviorRight">0</token>
							<token name="SelectionBehaviorUp">0</token>
							<bool name="SelectionGroup">false</bool>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">ConfigExplorer</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
						<Item class="UIListLayout" referent="RBX1F9B59E5996F4CCC91796C752A406B23">
							<Properties>
								<token name="HorizontalFlex">0</token>
								<token name="ItemLineAlignment">0</token>
								<UDim name="Padding">
									<S>0</S>
									<O>5</O>
								</UDim>
								<token name="VerticalFlex">0</token>
								<bool name="Wraps">false</bool>
								<token name="FillDirection">1</token>
								<token name="HorizontalAlignment">0</token>
								<token name="SortOrder">2</token>
								<token name="VerticalAlignment">1</token>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIListLayout</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UIPadding" referent="RBX060E5826E6224A0CAC56B6A4500D46F5">
							<Properties>
								<UDim name="PaddingBottom">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingLeft">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingRight">
									<S>0</S>
									<O>5</O>
								</UDim>
								<UDim name="PaddingTop">
									<S>0</S>
									<O>5</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIPadding</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="Frame" referent="RBX98AB6D155CB14A548B82CD1A08A87EE5">
							<Properties>
								<token name="Style">0</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<float name="BackgroundTransparency">1</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">2</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>-0.0204081628</XS>
									<XO>0</XO>
									<YS>0.0961538479</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>0</XS>
									<XO>255</XO>
									<YS>0</YS>
									<YO>205</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">Frame</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UIListLayout" referent="RBX6B9133EAB3DA4B8F94C34A9DECAE5680">
								<Properties>
									<token name="HorizontalFlex">0</token>
									<token name="ItemLineAlignment">0</token>
									<UDim name="Padding">
										<S>0</S>
										<O>5</O>
									</UDim>
									<token name="VerticalFlex">0</token>
									<bool name="Wraps">false</bool>
									<token name="FillDirection">1</token>
									<token name="HorizontalAlignment">0</token>
									<token name="SortOrder">2</token>
									<token name="VerticalAlignment">1</token>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIListLayout</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIPadding" referent="RBXC54E56CDC8AD4B589B88600A88D4A5ED">
								<Properties>
									<UDim name="PaddingBottom">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingLeft">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingRight">
										<S>0</S>
										<O>5</O>
									</UDim>
									<UDim name="PaddingTop">
										<S>0</S>
										<O>5</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIPadding</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="Frame" referent="RBX4EFB77B7930E4005A3ABDDA726916CFF">
								<Properties>
									<token name="Style">0</token>
									<bool name="Active">false</bool>
									<Vector2 name="AnchorPoint">
										<X>0</X>
										<Y>0</Y>
									</Vector2>
									<token name="AutomaticSize">0</token>
									<Color3 name="BackgroundColor3">
										<R>0.117647059</R>
										<G>0.117647059</G>
										<B>0.117647059</B>
									</Color3>
									<float name="BackgroundTransparency">0</float>
									<Color3 name="BorderColor3">
										<R>0</R>
										<G>0</G>
										<B>0</B>
									</Color3>
									<token name="BorderMode">0</token>
									<int name="BorderSizePixel">0</int>
									<bool name="ClipsDescendants">false</bool>
									<bool name="Draggable">false</bool>
									<bool name="Interactable">true</bool>
									<int name="LayoutOrder">0</int>
									<Ref name="NextSelectionDown">null</Ref>
									<Ref name="NextSelectionLeft">null</Ref>
									<Ref name="NextSelectionRight">null</Ref>
									<Ref name="NextSelectionUp">null</Ref>
									<UDim2 name="Position">
										<XS>0</XS>
										<XO>0</XO>
										<YS>0</YS>
										<YO>0</YO>
									</UDim2>
									<float name="Rotation">0</float>
									<bool name="Selectable">false</bool>
									<Ref name="SelectionImageObject">null</Ref>
									<int name="SelectionOrder">0</int>
									<token name="Sink">0</token>
									<UDim2 name="Size">
										<XS>1</XS>
										<XO>0</XO>
										<YS>0.111111119</YS>
										<YO>0</YO>
									</UDim2>
									<token name="SizeConstraint">0</token>
									<bool name="Visible">true</bool>
									<int name="ZIndex">1</int>
									<bool name="AutoLocalize">true</bool>
									<Ref name="RootLocalizationTable">null</Ref>
									<token name="SelectionBehaviorDown">0</token>
									<token name="SelectionBehaviorLeft">0</token>
									<token name="SelectionBehaviorRight">0</token>
									<token name="SelectionBehaviorUp">0</token>
									<bool name="SelectionGroup">false</bool>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">Object</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
								<Item class="TextLabel" referent="RBXA9B6DBEC0A0448AEA4DED627FDEE0AD3">
									<Properties>
										<Font name="FontFace">
											<Family><url>rbxassetid://12187365559</url></Family>
											<Weight>400</Weight>
											<Style>Normal</Style>
										</Font>
										<float name="LineHeight">1</float>
										<string name="LocalizationMatchIdentifier"></string>
										<string name="LocalizationMatchedSourceText"></string>
										<int name="MaxVisibleGraphemes">-1</int>
										<string name="OpenTypeFeatures"></string>
										<bool name="RichText">false</bool>
										<string name="Text">config name</string>
										<Color3 name="TextColor3">
											<R>1</R>
											<G>1</G>
											<B>1</B>
										</Color3>
										<token name="TextDirection">0</token>
										<bool name="TextScaled">true</bool>
										<float name="TextSize">14</float>
										<Color3 name="TextStrokeColor3">
											<R>0</R>
											<G>0</G>
											<B>0</B>
										</Color3>
										<float name="TextStrokeTransparency">1</float>
										<float name="TextTransparency">0</float>
										<token name="TextTruncate">0</token>
										<bool name="TextWrapped">true</bool>
										<token name="TextXAlignment">2</token>
										<token name="TextYAlignment">1</token>
										<bool name="Active">false</bool>
										<Vector2 name="AnchorPoint">
											<X>0</X>
											<Y>0</Y>
										</Vector2>
										<token name="AutomaticSize">0</token>
										<Color3 name="BackgroundColor3">
											<R>1</R>
											<G>1</G>
											<B>1</B>
										</Color3>
										<float name="BackgroundTransparency">1</float>
										<Color3 name="BorderColor3">
											<R>0</R>
											<G>0</G>
											<B>0</B>
										</Color3>
										<token name="BorderMode">0</token>
										<int name="BorderSizePixel">0</int>
										<bool name="ClipsDescendants">false</bool>
										<bool name="Draggable">false</bool>
										<bool name="Interactable">true</bool>
										<int name="LayoutOrder">0</int>
										<Ref name="NextSelectionDown">null</Ref>
										<Ref name="NextSelectionLeft">null</Ref>
										<Ref name="NextSelectionRight">null</Ref>
										<Ref name="NextSelectionUp">null</Ref>
										<UDim2 name="Position">
											<XS>0</XS>
											<XO>0</XO>
											<YS>0</YS>
											<YO>0</YO>
										</UDim2>
										<float name="Rotation">0</float>
										<bool name="Selectable">false</bool>
										<Ref name="SelectionImageObject">null</Ref>
										<int name="SelectionOrder">0</int>
										<token name="Sink">0</token>
										<UDim2 name="Size">
											<XS>1</XS>
											<XO>0</XO>
											<YS>1</YS>
											<YO>0</YO>
										</UDim2>
										<token name="SizeConstraint">0</token>
										<bool name="Visible">true</bool>
										<int name="ZIndex">1</int>
										<bool name="AutoLocalize">true</bool>
										<Ref name="RootLocalizationTable">null</Ref>
										<token name="SelectionBehaviorDown">0</token>
										<token name="SelectionBehaviorLeft">0</token>
										<token name="SelectionBehaviorRight">0</token>
										<token name="SelectionBehaviorUp">0</token>
										<bool name="SelectionGroup">false</bool>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">Object</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UICorner" referent="RBXCFC28C1A2D5542A5AB2B3FBA25AE9308">
									<Properties>
										<UDim name="BottomLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="BottomRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopLeftRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<UDim name="TopRightRadius">
											<S>0</S>
											<O>4</O>
										</UDim>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UICorner</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
								<Item class="UIStroke" referent="RBX58B9E8E38A824C998BC186A5B78FEA70">
									<Properties>
										<token name="ApplyStrokeMode">1</token>
										<UDim name="BorderOffset">
											<S>0</S>
											<O>0</O>
										</UDim>
										<token name="BorderStrokePosition">0</token>
										<Color3 name="Color">
											<R>0.490196079</R>
											<G>0.490196079</G>
											<B>0.490196079</B>
										</Color3>
										<bool name="Enabled">true</bool>
										<token name="LineJoinMode">0</token>
										<token name="StrokeSizingMode">0</token>
										<float name="Thickness">1</float>
										<float name="Transparency">0.800000012</float>
										<int name="ZIndex">1</int>
										<BinaryString name="AttributesSerialize"></BinaryString>
										<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
										<bool name="DefinesCapabilities">false</bool>
										<string name="Name">UIStroke</string>
										<BinaryString name="SerializedOverrides"></BinaryString>
										<int64 name="SourceAssetId">-1</int64>
										<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
									</Properties>
								</Item>
							</Item>
						</Item>
						<Item class="TextButton" referent="RBX3F22C1E52C46417188443D1A0C3F1364">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxassetid://12187365559</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Delete Selected Config</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">true</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">true</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="AutoButtonColor">true</bool>
								<Ref name="HoverHapticEffect">null</Ref>
								<bool name="Modal">false</bool>
								<Ref name="PressHapticEffect">null</Ref>
								<bool name="Selected">false</bool>
								<token name="Style">0</token>
								<bool name="Active">true</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.117647059</R>
									<G>0.117647059</G>
									<B>0.117647059</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">3</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">true</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">1</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>25</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextButton</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX54E2698449274F37BDA1F39F49F26759">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBXD2FF45DA27BA48548C122B02FC8CDEB7">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="TextLabel" referent="RBX10DBB49DDE7C41999F6AB26EABCC9B9C">
							<Properties>
								<Font name="FontFace">
									<Family><url>rbxassetid://12187365559</url></Family>
									<Weight>400</Weight>
									<Style>Normal</Style>
								</Font>
								<float name="LineHeight">1</float>
								<string name="LocalizationMatchIdentifier"></string>
								<string name="LocalizationMatchedSourceText"></string>
								<int name="MaxVisibleGraphemes">-1</int>
								<string name="OpenTypeFeatures"></string>
								<bool name="RichText">false</bool>
								<string name="Text">Config explorer</string>
								<Color3 name="TextColor3">
									<R>1</R>
									<G>1</G>
									<B>1</B>
								</Color3>
								<token name="TextDirection">0</token>
								<bool name="TextScaled">false</bool>
								<float name="TextSize">14</float>
								<Color3 name="TextStrokeColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<float name="TextStrokeTransparency">1</float>
								<float name="TextTransparency">0</float>
								<token name="TextTruncate">0</token>
								<bool name="TextWrapped">false</bool>
								<token name="TextXAlignment">2</token>
								<token name="TextYAlignment">1</token>
								<bool name="Active">false</bool>
								<Vector2 name="AnchorPoint">
									<X>0</X>
									<Y>0</Y>
								</Vector2>
								<token name="AutomaticSize">0</token>
								<Color3 name="BackgroundColor3">
									<R>0.0784313753</R>
									<G>0.0784313753</G>
									<B>0.0784313753</B>
								</Color3>
								<float name="BackgroundTransparency">0</float>
								<Color3 name="BorderColor3">
									<R>0</R>
									<G>0</G>
									<B>0</B>
								</Color3>
								<token name="BorderMode">0</token>
								<int name="BorderSizePixel">0</int>
								<bool name="ClipsDescendants">false</bool>
								<bool name="Draggable">false</bool>
								<bool name="Interactable">true</bool>
								<int name="LayoutOrder">0</int>
								<Ref name="NextSelectionDown">null</Ref>
								<Ref name="NextSelectionLeft">null</Ref>
								<Ref name="NextSelectionRight">null</Ref>
								<Ref name="NextSelectionUp">null</Ref>
								<UDim2 name="Position">
									<XS>0</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>0</YO>
								</UDim2>
								<float name="Rotation">0</float>
								<bool name="Selectable">false</bool>
								<Ref name="SelectionImageObject">null</Ref>
								<int name="SelectionOrder">0</int>
								<token name="Sink">0</token>
								<UDim2 name="Size">
									<XS>1</XS>
									<XO>0</XO>
									<YS>0</YS>
									<YO>20</YO>
								</UDim2>
								<token name="SizeConstraint">0</token>
								<bool name="Visible">true</bool>
								<int name="ZIndex">1</int>
								<bool name="AutoLocalize">true</bool>
								<Ref name="RootLocalizationTable">null</Ref>
								<token name="SelectionBehaviorDown">0</token>
								<token name="SelectionBehaviorLeft">0</token>
								<token name="SelectionBehaviorRight">0</token>
								<token name="SelectionBehaviorUp">0</token>
								<bool name="SelectionGroup">false</bool>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">TextLabel</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
							<Item class="UICorner" referent="RBX7C606AAE6EBA42BA883A23EF8C5944D1">
								<Properties>
									<UDim name="BottomLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="BottomRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopLeftRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<UDim name="TopRightRadius">
										<S>0</S>
										<O>4</O>
									</UDim>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UICorner</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
							<Item class="UIStroke" referent="RBX828E5DF02070477C92374C5A8BBE6104">
								<Properties>
									<token name="ApplyStrokeMode">1</token>
									<UDim name="BorderOffset">
										<S>0</S>
										<O>0</O>
									</UDim>
									<token name="BorderStrokePosition">0</token>
									<Color3 name="Color">
										<R>0.490196079</R>
										<G>0.490196079</G>
										<B>0.490196079</B>
									</Color3>
									<bool name="Enabled">true</bool>
									<token name="LineJoinMode">0</token>
									<token name="StrokeSizingMode">0</token>
									<float name="Thickness">1</float>
									<float name="Transparency">0.800000012</float>
									<int name="ZIndex">1</int>
									<BinaryString name="AttributesSerialize"></BinaryString>
									<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
									<bool name="DefinesCapabilities">false</bool>
									<string name="Name">UIStroke</string>
									<BinaryString name="SerializedOverrides"></BinaryString>
									<int64 name="SourceAssetId">-1</int64>
									<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
								</Properties>
							</Item>
						</Item>
						<Item class="UIStroke" referent="RBX984E20BD0ADB435BB3E3E802EAC6497B">
							<Properties>
								<token name="ApplyStrokeMode">1</token>
								<UDim name="BorderOffset">
									<S>0</S>
									<O>0</O>
								</UDim>
								<token name="BorderStrokePosition">0</token>
								<Color3 name="Color">
									<R>0.490196079</R>
									<G>0.490196079</G>
									<B>0.490196079</B>
								</Color3>
								<bool name="Enabled">true</bool>
								<token name="LineJoinMode">0</token>
								<token name="StrokeSizingMode">0</token>
								<float name="Thickness">1</float>
								<float name="Transparency">0.800000012</float>
								<int name="ZIndex">1</int>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UIStroke</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
						<Item class="UICorner" referent="RBXAA290404E57B43F9A7E4EF24CC74A037">
							<Properties>
								<UDim name="BottomLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="BottomRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopLeftRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<UDim name="TopRightRadius">
									<S>0</S>
									<O>4</O>
								</UDim>
								<BinaryString name="AttributesSerialize"></BinaryString>
								<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
								<bool name="DefinesCapabilities">false</bool>
								<string name="Name">UICorner</string>
								<BinaryString name="SerializedOverrides"></BinaryString>
								<int64 name="SourceAssetId">-1</int64>
								<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
							</Properties>
						</Item>
					</Item>
					<Item class="UICorner" referent="RBX09C5D87E23C04E43B01450217C3BF6F1">
						<Properties>
							<UDim name="BottomLeftRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="BottomRightRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="TopLeftRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<UDim name="TopRightRadius">
								<S>0</S>
								<O>4</O>
							</UDim>
							<BinaryString name="AttributesSerialize"></BinaryString>
							<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
							<bool name="DefinesCapabilities">false</bool>
							<string name="Name">UICorner</string>
							<BinaryString name="SerializedOverrides"></BinaryString>
							<int64 name="SourceAssetId">-1</int64>
							<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
						</Properties>
					</Item>
				</Item>
			</Item>
			<Item class="UICorner" referent="RBXF33CB28EB91C48D6BC7FCC6407FA3EFE">
				<Properties>
					<UDim name="BottomLeftRadius">
						<S>0</S>
						<O>4</O>
					</UDim>
					<UDim name="BottomRightRadius">
						<S>0</S>
						<O>4</O>
					</UDim>
					<UDim name="TopLeftRadius">
						<S>0</S>
						<O>4</O>
					</UDim>
					<UDim name="TopRightRadius">
						<S>0</S>
						<O>4</O>
					</UDim>
					<BinaryString name="AttributesSerialize"></BinaryString>
					<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
					<bool name="DefinesCapabilities">false</bool>
					<string name="Name">UICorner</string>
					<BinaryString name="SerializedOverrides"></BinaryString>
					<int64 name="SourceAssetId">-1</int64>
					<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
				</Properties>
			</Item>
			<Item class="UIDragDetector" referent="RBXF08AC72027574DCBBDF418757E128D7C">
				<Properties>
					<Content name="ActivatedCursorIcon"><null></null></Content>
					<token name="BoundingBehavior">0</token>
					<Ref name="BoundingUI">null</Ref>
					<Content name="CursorIcon"><null></null></Content>
					<Vector2 name="DragAxis">
						<X>1</X>
						<Y>0</Y>
					</Vector2>
					<token name="DragRelativity">0</token>
					<float name="DragRotation">0</float>
					<token name="DragSpace">0</token>
					<token name="DragStyle">0</token>
					<UDim2 name="DragUDim2">
						<XS>0</XS>
						<XO>0</XO>
						<YS>0</YS>
						<YO>0</YO>
					</UDim2>
					<bool name="Enabled">true</bool>
					<float name="MaxDragAngle">0</float>
					<UDim2 name="MaxDragTranslation">
						<XS>0</XS>
						<XO>0</XO>
						<YS>0</YS>
						<YO>0</YO>
					</UDim2>
					<float name="MinDragAngle">0</float>
					<UDim2 name="MinDragTranslation">
						<XS>0</XS>
						<XO>0</XO>
						<YS>0</YS>
						<YO>0</YO>
					</UDim2>
					<Ref name="ReferenceUIInstance">null</Ref>
					<token name="ResponseStyle">0</token>
					<bool name="Selectable">true</bool>
					<UDim2 name="SelectionModeDragSpeed">
						<XS>0</XS>
						<XO>300</XO>
						<YS>0</YS>
						<YO>300</YO>
					</UDim2>
					<float name="SelectionModeRotateSpeed">90</float>
					<token name="UIDragSpeedAxisMapping">0</token>
					<BinaryString name="AttributesSerialize"></BinaryString>
					<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
					<bool name="DefinesCapabilities">false</bool>
					<string name="Name">UIDragDetector</string>
					<BinaryString name="SerializedOverrides"></BinaryString>
					<int64 name="SourceAssetId">-1</int64>
					<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
				</Properties>
			</Item>
			<Item class="UIStroke" referent="RBX22257B1609974E6E8CF06695C1F3FB2D">
				<Properties>
					<token name="ApplyStrokeMode">1</token>
					<UDim name="BorderOffset">
						<S>0</S>
						<O>0</O>
					</UDim>
					<token name="BorderStrokePosition">0</token>
					<Color3 name="Color">
						<R>0.490196079</R>
						<G>0.490196079</G>
						<B>0.490196079</B>
					</Color3>
					<bool name="Enabled">true</bool>
					<token name="LineJoinMode">0</token>
					<token name="StrokeSizingMode">0</token>
					<float name="Thickness">1</float>
					<float name="Transparency">0.800000012</float>
					<int name="ZIndex">1</int>
					<BinaryString name="AttributesSerialize"></BinaryString>
					<SecurityCapabilities name="Capabilities">0</SecurityCapabilities>
					<bool name="DefinesCapabilities">false</bool>
					<string name="Name">UIStroke</string>
					<BinaryString name="SerializedOverrides"></BinaryString>
					<int64 name="SourceAssetId">-1</int64>
					<SharedString name="Tags">yuZpQdnvvUBOTYh1jqZ2cA==</SharedString>
				</Properties>
			</Item>
		</Item>
	</Item>
	<SharedStrings>
		<SharedString md5="yuZpQdnvvUBOTYh1jqZ2cA=="></SharedString>
	</SharedStrings>
</roblox>]==]

-- ===== config =====
local RBXMX_PATH = "Chieftain.lol/VC/VSCH_lol.rbxmx" -- FILL: only used when UI isn't embedded
local TMP_PATH = "VC_ui_tmp.rbxmx" -- temp file for the embedded rbxmx, deleted right after load
local CFG_DIR = "Chieftain.lol/VC/configs"
local TOGGLE_KEY = Enum.KeyCode.RightShift
local FONT = Font.new("rbxassetid://12187365559", Enum.FontWeight.Regular, Enum.FontStyle.Normal) -- Mukta Regular
local WHITE = Color3.fromRGB(255, 255, 255)
local ACTIVE = Color3.fromRGB(125, 125, 125) -- active tab/sub-tab stroke (same as in the rbxmx)
local ANIM = 0.18 -- seconds, tab / sub-tab / window fades

-- subtab -> attachment on the rig (R6 + R15 share these names). WeldBox can override with any attachment/part name.
local WELD = {
	Head = "HatAttachment", Face = "FaceFrontAttachment", Neck = "NeckAttachment", Back = "BodyBackAttachment",
	Waist = "WaistCenterAttachment", Shoulder = "RightShoulderAttachment", Front = "BodyFrontAttachment",
	Hair = "HairAttachment",
}
-- attachment name pattern (of an equipped accessory's Handle) -> tab, subtab. Order matters (Face/Waist before Front/Back).
local ATT_SUB = {
	{ "Hair", "Body", "Hair" }, { "Hat", "Accessories", "Head" }, { "Face", "Accessories", "Face" },
	{ "Neck", "Accessories", "Neck" }, { "Collar", "Accessories", "Neck" }, { "Shoulder", "Accessories", "Shoulder" },
	{ "Waist", "Accessories", "Waist" }, { "Front", "Accessories", "Front" }, { "Back", "Accessories", "Back" },
}

-- ===== find gui =====
local function findGui()
	local ok, par = pcall(function() return script.Parent end)
	if ok and typeof(par) == "Instance" and par:IsA("ScreenGui") and par.Name == "Visual Changer" then return par end
	local host = lp:WaitForChild("PlayerGui")
	local roots = { host }
	if gethui then
		local ok2, h = pcall(gethui)
		if ok2 and h then table.insert(roots, h); host = h end
	end
	pcall(function() table.insert(roots, game:GetService("CoreGui")) end)
	for _, r in ipairs(roots) do
		local g = r:FindFirstChild("Visual Changer")
		if g then return g end
	end
	local function load(path)
		local ok3, objs = pcall(function() return game:GetObjects(getcustomasset(path)) end)
		if ok3 and objs and objs[1] then objs[1].Parent = host; return objs[1] end
	end
	if UI and writefile and getcustomasset then -- embedded rbxmx -> temp file -> GetObjects
		writefile(TMP_PATH, UI)
		local g = load(TMP_PATH)
		if delfile then pcall(delfile, TMP_PATH) end
		if g then return g end
	elseif readfile and getcustomasset and isfile and isfile(RBXMX_PATH) then
		local g = load(RBXMX_PATH)
		if g then return g end
	end
	error("[VC] 'Visual Changer' ScreenGui not found (put it in PlayerGui, or run in an executor with writefile + getcustomasset)")
end

-- path walker; NOTE: Frame.Position / Frame.Rotation are properties, so the 'Position'/'Rotation' frames must go through here
local function C(o, ...)
	for _, n in ipairs({ ... }) do
		o = o:FindFirstChild(n) or error("[VC] missing '" .. n .. "' under " .. o:GetFullName())
	end
	return o
end

local gui = findGui()
gui.Enabled = true
gui.ResetOnSpawn = false

local SGS = getgenv and getgenv().SGS
local host
if SGS and SGS.Alive then
	local old = SGS.Container:FindFirstChild("Visual Changer")
	if old then old:Destroy() end
	local w0 = gui:FindFirstChild("Window")
	if w0 then w0.Visible = false end
	host = SGS:Mount(gui, "Visual Changer", "rbxassetid://113558263419663")
	gui.Name = "Visual Changer (shell)"
	gui = host
end

local win = C(gui, "Window")
local tabsC = C(win, "Titlebar", "TabsContainer")
local subTabs = C(win, "SubTabs")
local content = C(win, "Content")
local preview = C(content, "Preview")
local vp = C(preview, "ViewportFrame")
local rigFrame, shapeFrame = C(preview, "RigType"), C(preview, "BodyShape")
local dp = C(content, "DP")
local dpAcc, dpCreate, dpSet = C(dp, "Accessories"), C(dp, "Create"), C(dp, "Settings")
local dpPos, dpRot = C(dpAcc, "Position"), C(dpAcc, "Rotation")
local objEx, cfgEx = C(content, "Explorer", "ObjectExplorer"), C(content, "Explorer", "ConfigExplorer")
local uiScale = C(win, "UIScale")

local function style(o)
	if o:IsA("TextLabel") or o:IsA("TextButton") or o:IsA("TextBox") then
		o.FontFace = FONT
		o.TextColor3 = WHITE
		o.TextScaled = true
		o.TextXAlignment = Enum.TextXAlignment.Center
	end
end
for _, d in ipairs(gui:GetDescendants()) do style(d) end
gui.DescendantAdded:Connect(style)

-- ===== fades (tab / sub-tab / window) =====
local active = {} --
local winBusy = false

local function collect(roots, withStroke)
	local list = {}
	local function add(o, prop) table.insert(list, { o, prop, o[prop] }) end
	local function visit(o)
		if o:IsA("GuiObject") then
			add(o, "BackgroundTransparency")
			if o:IsA("TextLabel") or o:IsA("TextButton") or o:IsA("TextBox") then add(o, "TextTransparency") end
			if o:IsA("ViewportFrame") or o:IsA("ImageLabel") or o:IsA("ImageButton") then add(o, "ImageTransparency") end
			if o:IsA("ScrollingFrame") then add(o, "ScrollBarImageTransparency") end
		elseif withStroke and o:IsA("UIStroke") then
			add(o, "Transparency")
		end
	end
	for _, r in ipairs(roots) do
		visit(r)
		for _, d in ipairs(r:GetDescendants()) do visit(d) end
	end
	return list
end
local function setAlpha(list, a)
	for _, e in ipairs(list) do e[1][e[2]] = e[3] + (1 - e[3]) * (1 - a) end
end

local function finishAll()
	for _, f in ipairs(active) do
		f.tween:Cancel()
		f.proxy:Destroy()
		setAlpha(f.list, 1)
	end
	table.clear(active)
end

local function fade(list, from, to, dur, easing, tracked, done)
	local proxy = Instance.new("NumberValue")
	proxy.Value = from
	setAlpha(list, from)
	local tw = TweenService:Create(proxy, TweenInfo.new(dur, Enum.EasingStyle.Quad, easing), { Value = to })
	local rec = { list = list, proxy = proxy, tween = tw }
	if tracked then table.insert(active, rec) end
	proxy.Changed:Connect(function(v) setAlpha(list, v) end)
	tw.Completed:Connect(function(ps)
		if ps ~= Enum.PlaybackState.Completed then return end
		if done then done() end
		setAlpha(list, 1)
		proxy:Destroy()
		local i = table.find(active, rec)
		if i then table.remove(active, i) end
	end)
	tw:Play()
end

local function fadeIn(roots)
	finishAll()
	if winBusy or not win.Visible then return end
	fade(collect(roots, false), 0, 1, ANIM, Enum.EasingDirection.Out, true)
end

local baseScale = uiScale.Scale
local function toggleWindow()
	if winBusy then return end
	finishAll()
	winBusy = true
	local list = collect({ win }, true)
	if not win.Visible then
		win.Visible = true
		uiScale.Scale = baseScale * 0.94
		TweenService:Create(uiScale, TweenInfo.new(ANIM, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = baseScale }):Play()
		fade(list, 0, 1, ANIM, Enum.EasingDirection.Out, false, function() winBusy = false end)
	else
		TweenService:Create(uiScale, TweenInfo.new(ANIM, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Scale = baseScale * 0.94 }):Play()
		fade(list, 1, 0, ANIM, Enum.EasingDirection.In, false, function()
			win.Visible = false
			uiScale.Scale = baseScale
			winBusy = false
		end)
	end
end

-- ===== explorer lists -> scrolling =====
local function toScroll(old)
	local sf = Instance.new("ScrollingFrame")
	sf.Name, sf.Size, sf.Position, sf.LayoutOrder = old.Name, old.Size, old.Position, old.LayoutOrder
	sf.BackgroundColor3, sf.BackgroundTransparency, sf.BorderSizePixel = old.BackgroundColor3, old.BackgroundTransparency, 0
	sf.ScrollBarThickness = 3
	sf.CanvasSize = UDim2.new()
	sf.AutomaticCanvasSize = Enum.AutomaticSize.Y
	sf.ScrollingDirection = Enum.ScrollingDirection.Y
	for _, c in ipairs(old:GetChildren()) do c.Parent = sf end
	sf.Parent = old.Parent
	old:Destroy()
	return sf
end
local objList, cfgList = toScroll(C(objEx, "Frame")), toScroll(C(cfgEx, "Frame"))

local function getRowTemplate(list)
    local template = list:FindFirstChild("Object")
    if template then
        local label = template:FindFirstChild("Object")
        if label and label:IsA("TextLabel") then
            template.Parent = nil
            return template
        end
    end

    template = Instance.new("Frame")
    template.Name = "Object"
    template.Size = UDim2.new(1, 0, 0, 24)
    template.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    template.BackgroundTransparency = 0
    template.BorderSizePixel = 0
    template.Visible = true

    local label = Instance.new("TextLabel")
    label.Name = "Object"
    label.Size = UDim2.fromScale(1, 1)
    label.BackgroundTransparency = 1
    label.Text = "Object"
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextScaled = true
    label.Font = Enum.Font.Gotham
    label.Parent = template

    return template
end

local objTpl, cfgTpl = getRowTemplate(objList), getRowTemplate(cfgList)
local delObj, delCfg = C(objEx, "TextButton"), C(cfgEx, "TextButton")

-- ===== state =====
local state = {
	tab = "Accessories",
	sub = { Accessories = "Head", Outfit = "CShirt", Body = "Hair" },
	rig = "R15", shape = "Classic",
	items = {}, real = {}, sel = nil, cfgSel = nil,
}
local live = { parts = {}, failed = {}, reals = {} }
local pv = { parts = {}, failed = {}, reals = {} }

local function offsetCF(it)
	return CFrame.new(it.pos) * CFrame.Angles(math.rad(it.rot.X), math.rad(it.rot.Y), math.rad(it.rot.Z))
end

local function findAtt(model, name)
	for _, p in ipairs(model:GetChildren()) do
		if p:IsA("BasePart") then
			local a = p:FindFirstChild(name)
			if a and a:IsA("Attachment") then return a end
		end
	end
end

-- ===== already equipped accessories =====
local function classify(acc)
	local h = acc:FindFirstChild("Handle")
	local att = h and h:FindFirstChildOfClass("Attachment")
	local n = att and att.Name or ""
	for _, r in ipairs(ATT_SUB) do
		if n:find(r[1]) then return r[2], r[3] end
	end
	return "Accessories", "Head"
end
local function findJoint(acc)
	local h = acc:FindFirstChild("Handle")
	if not h then return end
	for _, d in ipairs(h:GetChildren()) do
		if d:IsA("JointInstance") and (d.Part0 == h or d.Part1 == h) then return d, h end
	end
end
-- offset O is in body-attachment space; Part0==Handle flips the weld direction
local function applyReal(it, w, c0, p0)
	local o = offsetCF(it)
	w.C0 = p0 and (c0 * o:Inverse()) or (c0 * o)
end

-- preview pose solver: all parts anchored, joints disabled, CFrames computed from C0/C1 (Motor6D.Transform = identity -> standing pose)
local function poseRig(rig)
	local root = rig:FindFirstChild("HumanoidRootPart") or rig:FindFirstChild("Torso") or rig:FindFirstChild("UpperTorso")
	if not root then return end
	local joints = {}
	for _, d in ipairs(rig:GetDescendants()) do
		if d:IsA("BasePart") then d.Anchored = true
		elseif d:IsA("JointInstance") and d.Part0 and d.Part1 then
			if d:IsA("Motor6D") then d.Transform = CFrame.identity end
			pcall(function() d.Enabled = false end)
			table.insert(joints, d)
		end
	end
	local pos, progress = { [root] = CFrame.new() }, true
	while progress do
		progress = false
		for _, j in ipairs(joints) do
			local a, b = j.Part0, j.Part1
			local t = j:IsA("Motor6D") and j.Transform or CFrame.identity
			if pos[a] and not pos[b] then
				pos[b] = pos[a] * j.C0 * t * j.C1:Inverse(); progress = true
			elseif pos[b] and not pos[a] then
				pos[a] = pos[b] * j.C1 * t:Inverse() * j.C0:Inverse(); progress = true
			end
		end
	end
	for part, cf in pairs(pos) do part.CFrame = cf end
end

local function rescanReal()
	local old = {}
	for _, it in ipairs(state.real) do old[it.acc] = it end
	local list = {}
	if live.model then
		for _, acc in ipairs(live.model:GetChildren()) do
			if acc:IsA("Accessory") then
				local it = old[acc]
				if not it then
					local w, h = findJoint(acc)
					local tab, sub = classify(acc)
					it = {
						kind = "real", acc = acc, name = acc.Name, tab = tab, sub = sub,
						pos = Vector3.zero, rot = Vector3.zero, scale = 1,
						joint = w, c0 = w and w.C0, p0 = w ~= nil and w.Part0 == h,
						scaleData = {},
					}
					for _, obj in ipairs(acc:GetDescendants()) do
						if obj:IsA("BasePart") then table.insert(it.scaleData, { obj = obj, size = obj.Size }) end
						if obj:IsA("SpecialMesh") then table.insert(it.scaleData, { obj = obj, meshScale = obj.Scale }) end
					end
				end
				table.insert(list, it)
			end
		end
	end
	state.real = list
	if state.sel and state.sel.kind == "real" and not table.find(list, state.sel) then state.sel = nil end
end

-- ===== mounting =====
local function mount(ctx, it)
	local weldName = (it.weld and it.weld ~= "") and it.weld or WELD[it.sub]
	local part0, base
	if weldName and weldName:match("Attachment$") then
		local a = findAtt(ctx.model, weldName)
		if a then part0, base = a.Parent, a.CFrame end
	elseif weldName then
		local p = ctx.model:FindFirstChild(weldName)
		if p and p:IsA("BasePart") then part0, base = p, CFrame.new() end
	end
	if not part0 then ctx.failed[it] = true return end
	local h = Instance.new("Part")
	h.Name = it.name
	h.Size = Vector3.one
	h.CanCollide, h.CanTouch, h.CanQuery, h.Massless = false, false, false, true
	local m = Instance.new("SpecialMesh")
	m.MeshType = Enum.MeshType.FileMesh
	m.MeshId = it.mesh
	m.TextureId = it.texture or ""
	m.Scale = Vector3.one * math.clamp(tonumber(it.scale) or 1, 0.1, 5)
	m.Parent = h
	local w = Instance.new("Weld")
	w.Part0, w.Part1, w.C0 = part0, h, base * offsetCF(it)
	w.Parent = h
	h.Parent = ctx.folder
	ctx.parts[it] = { weld = w, base = base, mesh = m }
end

-- preview only: copy of an equipped accessory, re-welded to the preview rig by attachment name
local function mountRealClone(ctx, it)
	local ok, clone = pcall(function() return it.acc:Clone() end)
	if not ok or not clone then return end
	local h = clone:FindFirstChild("Handle")
	if not h then clone:Destroy() return end
	for _, d in ipairs(clone:GetDescendants()) do -- cloned welds still point at the real character
		if d:IsA("JointInstance") or d:IsA("WeldConstraint") or d:IsA("LuaSourceContainer") then d:Destroy() end
	end
	for _, part in ipairs(clone:GetDescendants()) do
		if part:IsA("BasePart") then
			part.Anchored = true
			part.CanCollide = false
			part.CanTouch = false
			part.CanQuery = false
		end
	end
	local att = h:FindFirstChildOfClass("Attachment")
	local part0, c0, c1
	if att then
		local ba = findAtt(ctx.model, att.Name)
		if ba then part0, c0, c1 = ba.Parent, ba.CFrame, att.CFrame end
	else
		local head = ctx.model:FindFirstChild("Head")
		if head then part0, c0, c1 = head, CFrame.new(0, 0.5, 0), clone.AttachmentPoint end
	end
	if not part0 then clone:Destroy() return end
	-- The source accessory is already scaled on the local character; cloning it
	-- preserves that size, so do not apply the scale a second time here.
	local w = Instance.new("Weld")
	w.Part0, w.Part1, w.C0, w.C1 = part0, h, c0, c1
	w.Parent = h
	clone.Parent = ctx.folder
	ctx.reals[it] = { weld = w, c0 = c0, p0 = false }
	applyReal(it, w, c0, false)
end

local function applyClothes(model)
	for cls, prop in pairs({ Shirt = "ShirtTemplate", Pants = "PantsTemplate" }) do
		local want
		for _, it in ipairs(state.items) do if it.kind == cls then want = it end end
		local inst = model:FindFirstChildOfClass(cls)
		if want then
			if not inst then
				inst = Instance.new(cls)
				inst.Name = "VC_" .. cls
				inst:SetAttribute("VC_Made", true)
				inst.Parent = model
			end
			if inst:GetAttribute("VC_Orig") == nil then inst:SetAttribute("VC_Orig", inst[prop]) end
			inst[prop] = want.texture
		elseif inst and inst:GetAttribute("VC_Orig") ~= nil then
			if inst:GetAttribute("VC_Made") then
				inst:Destroy()
			else
				inst[prop] = inst:GetAttribute("VC_Orig")
				inst:SetAttribute("VC_Orig", nil)
			end
		end
	end
end

local function rebuild(ctx)
	if not ctx.model or not ctx.model.Parent then return end
	if ctx.folder then ctx.folder:Destroy() end
	ctx.folder = Instance.new("Folder")
	ctx.folder.Name = "VC_Items"
	ctx.folder.Parent = ctx.model
	ctx.parts, ctx.failed, ctx.reals = {}, {}, {}
	for _, it in ipairs(state.items) do
		if it.kind == "acc" then mount(ctx, it) end
	end
	if ctx == live then
		for _, it in ipairs(state.real) do
			local w = it.joint
			if w and w.Parent then
				ctx.reals[it] = { weld = w, c0 = it.c0, p0 = it.p0 }
				applyReal(it, w, it.c0, it.p0)
			end
		end
	else
		-- preview rig has no accessories of its own (stripped in buildOnce): clone each equipped one onto it
		for _, it in ipairs(state.real) do mountRealClone(ctx, it) end
	end
	applyClothes(ctx.model)
	if ctx ~= live then poseRig(ctx.model) end
end

local function updateItem(it)
	for _, ctx in ipairs({ live, pv }) do
		local p = ctx.parts[it]
		if p then
			p.weld.C0 = p.base * offsetCF(it)
			if p.mesh then p.mesh.Scale = Vector3.one * math.clamp(tonumber(it.scale) or 1, 0.1, 5) end
		end
		local r = ctx.reals[it]
		if r and r.weld.Parent then applyReal(it, r.weld, r.c0, r.p0) end
		if ctx == pv and ctx.model and ctx.model.Parent then poseRig(ctx.model) end
	end
end

local function applyRealScale(it)
	local scale = math.clamp(tonumber(it.scale) or 1, 0.1, 5)
	for _, rec in ipairs(it.scaleData or {}) do
		local obj = rec.obj
		if obj and obj.Parent then
			if rec.size then obj.Size = rec.size * scale end
			if rec.meshScale then obj.Scale = rec.meshScale * scale end
		end
	end
end

-- ===== preview rig =====
local cam = Instance.new("Camera")
cam.FieldOfView = 40
cam.Parent = vp
vp.CurrentCamera = cam
vp.Active = true
local yaw, zoom = 0, 1
local function frameCamera()
	-- camera orbits the rig's visual center (measured from the body parts, so R6 and R15 are both centered)
	local c = pv.center or Vector3.zero
	local h = pv.height or 5.5
	local base = (h * 1.2) / (2 * math.tan(math.rad(cam.FieldOfView / 2)))
	local d = base * zoom + 1.5
	local off = CFrame.Angles(0, yaw, 0):VectorToWorldSpace(Vector3.new(0, 0, -d)) -- rig faces -Z
	cam.CFrame = CFrame.lookAt(c + off + Vector3.new(0, h * 0.04, 0), c)
end
frameCamera()

local dragging = false
vp.InputBegan:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = true end
end)
UIS.InputEnded:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = false end
end)
UIS.InputChanged:Connect(function(i)
	if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
		yaw -= math.rad(i.Delta.X * 0.8)
		frameCamera()
	end
end)
vp.MouseWheelForward:Connect(function() zoom = math.max(0.3, zoom * 0.88); frameCamera() end)
vp.MouseWheelBackward:Connect(function() zoom = math.min(2.2, zoom / 0.88); frameCamera() end)

local function bodyBounds(rig)
	local lo, hi = math.huge, -math.huge
	for _, p in ipairs(rig:GetChildren()) do
		if p:IsA("BasePart") and p.Transparency < 1 then
			local cf, s = p.CFrame, p.Size
			local half = math.abs(cf.UpVector.Y) * s.Y / 2 + math.abs(cf.RightVector.Y) * s.X / 2 + math.abs(cf.LookVector.Y) * s.Z / 2
			lo, hi = math.min(lo, cf.Y - half), math.max(hi, cf.Y + half)
		end
	end
	if lo > hi then return Vector3.new(0, -0.3, 0), 5.5 end
	return Vector3.new(0, (lo + hi) / 2, 0), hi - lo
end

local previewBusy, previewPending = false, false
local function buildOnce()
	local wantedRig = state.rig == "R6" and Enum.HumanoidRigType.R6 or Enum.HumanoidRigType.R15
	local char = lp.Character
	local charHum = char and char:FindFirstChildOfClass("Humanoid")
	local yours = state.shape == "Your skin" and charHum ~= nil
	local rig

	-- same rig type as the live character -> plain clone of it
	if yours and charHum.RigType == wantedRig then
		local arch = {}
		local ok, cloned = pcall(function()
			arch[char] = char.Archivable; char.Archivable = true
			for _, o in ipairs(char:GetDescendants()) do arch[o] = o.Archivable; o.Archivable = true end
			return char:Clone()
		end)
		for o, v in pairs(arch) do pcall(function() o.Archivable = v end) end
		if ok then rig = cloned end
	end

	-- different rig type (or Classic) -> fresh rig from description, accessories get re-mounted from state.real
	if not rig then
		local desc
		if yours then
			local ok, applied = pcall(function() return charHum:GetAppliedDescription() end)
			if ok and applied then desc = applied end
			if desc then
				pcall(function() desc:SetAccessories({}, true) end)
				for _, prop in ipairs({ "HatAccessory", "HairAccessory", "FaceAccessory", "NeckAccessory", "ShoulderAccessory", "FrontAccessory", "BackAccessory", "WaistAccessory" }) do
					pcall(function() desc[prop] = "" end)
				end
			end
		end
		if not desc then
			desc = Instance.new("HumanoidDescription")
			local y, b, g = Color3.fromRGB(245, 205, 48), Color3.fromRGB(13, 105, 172), Color3.fromRGB(75, 151, 75)
			desc.HeadColor, desc.TorsoColor = y, b
			desc.LeftArmColor, desc.RightArmColor = y, y
			desc.LeftLegColor, desc.RightLegColor = g, g
			desc.Face = 144075659
		end
		local ok, generated = pcall(function() return Players:CreateHumanoidModelFromDescription(desc, wantedRig) end)
		desc:Destroy()
		if not ok or not generated then return end
		rig = generated
	end

	if pv.model then pv.model:Destroy() end
	rig.Name = "VC_Preview"
	for _, c in ipairs(rig:GetChildren()) do -- strip everything accessory-like; rebuild(pv) mounts them once
		if c:IsA("Accessory") or c:IsA("Tool") or c.Name == "VC_Items" then c:Destroy() end
	end
	for _, o in ipairs(rig:GetDescendants()) do
		if o:IsA("LuaSourceContainer") or o:IsA("Animator") then o:Destroy() end
	end
	local hum = rig:FindFirstChildOfClass("Humanoid")
	if hum then hum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None end
	rig.Parent = vp
	pv.model, pv.folder = rig, nil
	rebuild(pv) -- mounts created items + equipped accessories, then poseRig
	pv.center, pv.height = bodyBounds(rig)
	frameCamera()
end

local function buildPreview()
	if previewBusy then previewPending = true return end
	previewBusy = true
	repeat
		previewPending = false
		local ok, err = pcall(buildOnce)
		if not ok then warn("[VC] Preview rebuild failed: " .. tostring(err)) end
	until not previewPending
	previewBusy = false
end

-- ===== ui helpers =====
local function flash(btn, msg)
	local old = btn:GetAttribute("VC_txt") or btn.Text
	btn:SetAttribute("VC_txt", old)
	btn.Text = msg
	task.delay(1.2, function() if btn.Parent then btn.Text = old end end)
end

local function stroke(b)
	local s = b:FindFirstChildOfClass("UIStroke")
	if not s then s = Instance.new("UIStroke"); s.Thickness = 1; s.Transparency = 1; s.Parent = b end
	s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	s.Color = ACTIVE
	s.Enabled = true
	return s
end
local function mark(parent, isOn, instant) -- active indicator = stroke fading in/out
	for _, b in ipairs(parent:GetChildren()) do
		if b:IsA("TextButton") then
			local s = stroke(b)
			local goal = isOn(b) and 0 or 1
			if instant then
				s.Transparency = goal
			else
				TweenService:Create(s, TweenInfo.new(0.15, Enum.EasingStyle.Quad), { Transparency = goal }):Play()
			end
		end
	end
end

local function fillList(list, tpl, names, selIdx, onPick)
	for _, c in ipairs(list:GetChildren()) do
		if c:IsA("GuiObject") then c:Destroy() end
	end
	for i, name in ipairs(names) do
		local row = tpl:Clone()
		row.Size = UDim2.new(1, 0, 0, 24)
		row.LayoutOrder = i
		C(row, "Object").Text = name
		local st = Instance.new("UIStroke")
		st.ApplyStrokeMode, st.Color, st.Thickness, st.Enabled = Enum.ApplyStrokeMode.Border, ACTIVE, 1, (i == selIdx)
		st.Parent = row
		local hit = Instance.new("TextButton")
		hit.BackgroundTransparency, hit.Text, hit.Size, hit.ZIndex = 1, "", UDim2.fromScale(1, 1), 5
		hit.Parent = row
		hit.MouseButton1Click:Connect(function() onPick(i) end)
		row.Parent = list
	end
end

-- Create panel pieces
local nameBox, weldBox, meshBox, texBox = C(dpCreate, "NameBox"), C(dpCreate, "WeldBox"), C(dpCreate, "MeshBox"), C(dpCreate, "TextureBox")
local weldTag, createBtn = C(weldBox, "TextLabel"), C(dpCreate, "TextButton")
weldTag.Active = false
local function syncWeldTag()
	weldTag.Text = state.sub[state.tab] or ""
	weldTag.Visible = (weldBox.Text == "")
end
weldBox:GetPropertyChangedSignal("Text"):Connect(syncWeldTag)

-- Position / Rotation pieces
local posBoxes = { C(dpPos, "XPositionBox"), C(dpPos, "YPositionBox"), C(dpPos, "ZPositionBox") }
local rotBoxes = { C(dpRot, "XRotationBox"), C(dpRot, "YRotationBox"), C(dpRot, "ZRotationBox") }
local posApply, rotApply = C(dpPos, "Apply"), C(dpRot, "Apply")
local function fmt(n) return tostring(math.round(n * 1000) / 1000) end

-- Size controls: готовые из gui (DP.Accessories.scaleFrame). внутри два child с именем "Scale" (TextLabel + TextBox), поэтому бокс берём по классу
local scaleFrame = C(dpAcc, "Scale")
local itemScaleBox = C(scaleFrame, "ScaleBox")
local scaleApply = C(scaleFrame, "Apply")

local refreshLists, loadBoxes
local function show(instant)
	local t = state.tab
	local isSet = t == "Settings"
	for _, f in ipairs(subTabs:GetChildren()) do
		if f:IsA("Frame") then f.Visible = (f.Name == t) end
	end
	preview.Visible = not isSet
	objEx.Visible, cfgEx.Visible = not isSet, isSet
	dpAcc.Visible = (t == "Accessories" or t == "Body")
	dpCreate.Visible = not isSet
	dpSet.Visible = isSet
	local out = (t == "Outfit") -- Outfit: Name + TextureID only (shirt/pants template), no weld/mesh/pos/rot
	for _, n in ipairs({ "WeldLabel", "WeldBox", "MeshLabel", "MeshBox" }) do C(dpCreate, n).Visible = not out end
	mark(tabsC, function(b) return b.Name == t end, instant)
	local sf = subTabs:FindFirstChild(t)
	if sf then mark(sf, function(b) return b.Name == state.sub[t] end, instant) end
	syncWeldTag()
end

function loadBoxes()
	local it = state.sel
	local a = it ~= nil and (it.kind == "acc" or it.kind == "real")
	for i, ax in ipairs({ "X", "Y", "Z" }) do
		posBoxes[i].Text = a and fmt(it.pos[ax]) or ""
		rotBoxes[i].Text = a and fmt(it.rot[ax]) or ""
	end
	itemScaleBox.Text = a and fmt(it.scale or 1) or ""
end

-- ===== configs (file if fs funcs exist, else session memory) — created items only, equipped accessories aren't saved =====
local FS = writefile and readfile and isfolder and makefolder and listfiles and delfile
local mem = {}
local function ensureDir()
	local acc = ""
	for part in CFG_DIR:gmatch("[^/]+") do
		acc = (acc == "") and part or (acc .. "/" .. part)
		if not isfolder(acc) then makefolder(acc) end
	end
end
local function cfgNames()
	local names = {}
	if FS then
		pcall(function()
			ensureDir()
			for _, p in ipairs(listfiles(CFG_DIR)) do
				local n = p:match("([^/\\]+)%.json$")
				if n then table.insert(names, n) end
			end
		end)
	else
		for n in pairs(mem) do table.insert(names, n) end
	end
	table.sort(names)
	return names
end
local function cfgPath(n) return CFG_DIR .. "/" .. n .. ".json" end
local function cleanName(s) return (s:gsub("[^%w _%-]", "")):match("^%s*(.-)%s*$") end

local function serialize()
	local data = { rig = state.rig, shape = state.shape, items = {} }
	for _, it in ipairs(state.items) do
		table.insert(data.items, {
			tab = it.tab, sub = it.sub, kind = it.kind, name = it.name, mesh = it.mesh, texture = it.texture, weld = it.weld,
			pos = { it.pos.X, it.pos.Y, it.pos.Z }, rot = { it.rot.X, it.rot.Y, it.rot.Z }, scale = it.scale or 1,
		})
	end
	return HttpService:JSONEncode(data)
end
local function saveCfg(n)
	local json = serialize()
	if FS then ensureDir(); writefile(cfgPath(n), json) else mem[n] = json end
end
local function readCfg(n)
	if FS then
		local ok, s = pcall(readfile, cfgPath(n))
		return ok and s or nil
	end
	return mem[n]
end

-- ===== refresh =====
local function refreshAll(skipPreview)
	rebuild(live)
	if not skipPreview then rebuild(pv) end
	refreshLists()
	loadBoxes()
end

local function visibleItems()
	local vis = {}
	for _, it in ipairs(state.real) do
		if it.tab == state.tab and it.sub == state.sub[state.tab] then table.insert(vis, it) end
	end
	for _, it in ipairs(state.items) do
		if it.tab == state.tab and it.sub == state.sub[state.tab] then table.insert(vis, it) end
	end
	return vis
end

function refreshLists()
	if state.tab == "Settings" then
		local names, si = cfgNames(), nil
		for i, n in ipairs(names) do if n == state.cfgSel then si = i end end
		fillList(cfgList, cfgTpl, names, si, function(i) state.cfgSel = names[i]; refreshLists() end)
	else
		local vis, names, si = visibleItems(), {}, nil
		for i, it in ipairs(vis) do
			names[i] = it.name
			if it == state.sel then si = i end
		end
		fillList(objList, objTpl, names, si, function(i) state.sel = vis[i]; refreshLists(); loadBoxes() end)
	end
end

local function setTab(t)
	state.tab, state.sel = t, nil
	weldBox.Text = ""
	show(); refreshLists(); loadBoxes()
	fadeIn({ subTabs, content })
end
local function setSub(s)
	state.sub[state.tab], state.sel = s, nil
	weldBox.Text = ""
	show(); refreshLists(); loadBoxes()
	fadeIn({ objEx, dpAcc, dpCreate })
end

-- ===== wiring =====
for _, b in ipairs(tabsC:GetChildren()) do
	if b:IsA("TextButton") then
		b.MouseButton1Click:Connect(function() if state.tab ~= b.Name then setTab(b.Name) end end)
	end
end
for _, f in ipairs(subTabs:GetChildren()) do
	if f:IsA("Frame") then
		for _, b in ipairs(f:GetChildren()) do
			if b:IsA("TextButton") then
				b.MouseButton1Click:Connect(function()
					if state.tab == f.Name and state.sub[f.Name] ~= b.Name then setSub(b.Name) end
				end)
			end
		end
	end
end

local function markChoices(instant)
	mark(rigFrame, function(b) return b.Text == state.rig end, instant)
	mark(shapeFrame, function(b) return b.Text == state.shape end, instant)
end
for _, b in ipairs(rigFrame:GetChildren()) do
	if b:IsA("TextButton") then
		-- Resolve the rig from the stable instance name first, never from temporary button text.
		local key = (b.Name .. " " .. b.Text):upper()
		local v = key:find("R15", 1, true) and "R15" or (key:find("R6", 1, true) and "R6" or nil)
		-- The embedded UI's stable names are TextButton (R6) and TextButton1 (R15).
		if not v then
			if b.Name == "TextButton" then v = "R6" elseif b.Name == "TextButton1" then v = "R15" end
		end
		if v then
			b.Activated:Connect(function()
				if state.rig == v then return end
				state.rig = v
				markChoices()
				task.spawn(buildPreview)
			end)
		end
	end
end
for _, b in ipairs(shapeFrame:GetChildren()) do
	if b:IsA("TextButton") then
		local v = b.Text -- "Classic" / "Your skin"
		b.MouseButton1Click:Connect(function() state.shape = v; markChoices(); task.spawn(buildPreview) end)
	end
end

local function normId(s)
	s = (s or ""):gsub("%s", "")
	if s == "" then return "" end
	if tonumber(s) then return "rbxassetid://" .. s end
	return s
end
local counter = 0
createBtn.MouseButton1Click:Connect(function()
	local tab, sub = state.tab, state.sub[state.tab]
	counter += 1
	local it = { tab = tab, sub = sub, pos = Vector3.zero, rot = Vector3.zero, scale = 1 }
	it.name = (nameBox.Text ~= "" and nameBox.Text) or (sub .. counter)
	if tab == "Outfit" then
		it.kind = (sub == "CShirt") and "Shirt" or "Pants"
		it.texture = normId(texBox.Text)
		if it.texture == "" then flash(createBtn, "Need TextureID") return end
		for i = #state.items, 1, -1 do -- one shirt / one pants at a time
			if state.items[i].kind == it.kind then table.remove(state.items, i) end
		end
	else
		it.kind = "acc"
		it.mesh, it.texture, it.weld = normId(meshBox.Text), normId(texBox.Text), weldBox.Text
		if it.mesh == "" then flash(createBtn, "Need Mesh") return end
	end
	table.insert(state.items, it)
	state.sel = it
	refreshAll()
	if it.kind == "acc" and live.failed[it] then flash(createBtn, "No attach point") end
end)

local function num(box) return tonumber(box.Text) or 0 end
local function applyVec(boxes, field, btn)
	local it = state.sel
	if not it or (it.kind ~= "acc" and it.kind ~= "real") then flash(btn, "Select object") return end
	if it.kind == "real" and not it.joint then flash(btn, "No weld found") return end
	it[field] = Vector3.new(num(boxes[1]), num(boxes[2]), num(boxes[3]))
	updateItem(it)
	loadBoxes()
end
posApply.MouseButton1Click:Connect(function() applyVec(posBoxes, "pos", posApply) end)
rotApply.MouseButton1Click:Connect(function() applyVec(rotBoxes, "rot", rotApply) end)
for _, b in ipairs(posBoxes) do b.FocusLost:Connect(function(enter) if enter then applyVec(posBoxes, "pos", posApply) end end) end
for _, b in ipairs(rotBoxes) do b.FocusLost:Connect(function(enter) if enter then applyVec(rotBoxes, "rot", rotApply) end end) end
local function applyScale()
	local it = state.sel
	if not it or (it.kind ~= "acc" and it.kind ~= "real") then flash(scaleApply, "Select accessory") return end
	local value = tonumber(itemScaleBox.Text)
	if not value then flash(scaleApply, "Enter number") return end
	it.scale = math.clamp(value, 0.1, 5)
	itemScaleBox.Text = fmt(it.scale)
	if it.kind == "real" then applyRealScale(it) end
	updateItem(it)
	if it.kind == "real" then task.defer(buildPreview) end
end
scaleApply.MouseButton1Click:Connect(applyScale)
itemScaleBox.FocusLost:Connect(function(enter) if enter then applyScale() end end)

delObj.MouseButton1Click:Connect(function()
	local it = state.sel
	if not it then flash(delObj, "Select object") return end
	if it.kind == "real" then -- removes the equipped accessory on your client only
		local i = table.find(state.real, it)
		if i then table.remove(state.real, i) end
		pcall(function() it.acc:Destroy() end)
	else
		local i = table.find(state.items, it)
		if i then table.remove(state.items, i) end
	end
	state.sel = nil
	refreshAll()
end)

-- settings: configs
local cfgCreate, cfgLoad, cfgOver = C(dpSet, "ConfigSettings", "CreateConfigButton"), C(dpSet, "ConfigSettings", "LoadConfigButton"), C(dpSet, "ConfigSettings", "OverwriteConfigButton")
local cfgName = C(dpSet, "ConfigSettings", "CreateNameBox")

cfgCreate.MouseButton1Click:Connect(function()
	local n = cleanName(cfgName.Text)
	if n == "" then flash(cfgCreate, "Need name") return end
	if table.find(cfgNames(), n) then flash(cfgCreate, "Exists") return end
	saveCfg(n); state.cfgSel = n
	refreshLists(); flash(cfgCreate, "Saved")
end)
cfgOver.MouseButton1Click:Connect(function()
	local n = state.cfgSel
	if not n then flash(cfgOver, "Select config") return end
	saveCfg(n); flash(cfgOver, "Overwritten")
end)
cfgLoad.MouseButton1Click:Connect(function()
	local n = state.cfgSel
	local raw = n and readCfg(n)
	if not raw then flash(cfgLoad, "Select config") return end
	local ok, data = pcall(function() return HttpService:JSONDecode(raw) end)
	if not ok or type(data) ~= "table" then flash(cfgLoad, "Bad file") return end
	local items = {}
	for _, t in ipairs(data.items or {}) do
		local p, r = t.pos or { 0, 0, 0 }, t.rot or { 0, 0, 0 }
		table.insert(items, {
			tab = t.tab, sub = t.sub, kind = t.kind, name = t.name, mesh = t.mesh, texture = t.texture, weld = t.weld,
			pos = Vector3.new(p[1], p[2], p[3]), rot = Vector3.new(r[1], r[2], r[3]), scale = math.clamp(tonumber(t.scale) or 1, 0.1, 5),
		})
	end
	state.items, state.sel = items, nil
	state.rig = (data.rig == "R6") and "R6" or "R15"
	state.shape = (data.shape == "Your skin") and "Your skin" or "Classic"
	markChoices()
	refreshAll(true)
	task.spawn(buildPreview)
	flash(cfgLoad, "Loaded")
end)
delCfg.MouseButton1Click:Connect(function()
	local n = state.cfgSel
	if not n then flash(delCfg, "Select config") return end
	if FS then pcall(delfile, cfgPath(n)) else mem[n] = nil end
	state.cfgSel = nil
	refreshLists()
end)

-- ui scale
local scaleBox = C(dpSet, "UISettings", "UIScaleBox")
scaleBox.Text = tostring(baseScale)
scaleBox.FocusLost:Connect(function()
	local v = math.clamp(tonumber(scaleBox.Text) or baseScale, 0.5, 2)
	baseScale = v
	uiScale.Scale = v
	scaleBox.Text = tostring(v)
end)

-- toggle: в SGS видимостью рулит таб, RightShift не нужен
if not host then
	UIS.InputBegan:Connect(function(i, gp)
		if not gp and i.KeyCode == TOGGLE_KEY then toggleWindow() end
	end)
end

-- live character (re-applied on respawn); equipped accessories are re-scanned when they change
local watch = {}
local function bindChar(c)
	live.model = nil
	for _, cn in ipairs(watch) do cn:Disconnect() end
	table.clear(watch)
	c:WaitForChild("Humanoid", 10)
	c:WaitForChild("HumanoidRootPart", 10)
	local t = 0
	while not lp:HasAppearanceLoaded() and t < 6 do task.wait(0.25); t += 0.25 end
	if lp.Character ~= c then return end
	live.model, live.folder = c, nil
	rescanReal()
	refreshAll()
	local pending = false
	local function onChange(ch)
		if not ch:IsA("Accessory") or pending then return end
		pending = true
		task.delay(0.6, function()
			pending = false
			if live.model ~= c then return end
			rescanReal()
			refreshAll()
		end)
	end
	table.insert(watch, c.ChildAdded:Connect(onChange))
	table.insert(watch, c.ChildRemoved:Connect(onChange))
end
lp.CharacterAdded:Connect(bindChar)
if lp.Character then task.spawn(bindChar, lp.Character) end

-- init
markChoices(true)
show(true)
refreshLists()
loadBoxes()
task.spawn(buildPreview)
win.Visible = false
if host then
	-- вход/выход окна от видимости хоста (клик по табу в SGS), та же анимация что у toggleWindow
	local scaleTw
	local function enter()
		finishAll()
		if scaleTw then scaleTw:Cancel() end
		win.Visible = true
		uiScale.Scale = baseScale * 0.94
		scaleTw = TweenService:Create(uiScale, TweenInfo.new(ANIM, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = baseScale })
		scaleTw:Play()
		fade(collect({ win }, true), 0, 1, ANIM, Enum.EasingDirection.Out, true)
	end
	local function leave()
		finishAll()
		if scaleTw then scaleTw:Cancel() end
		uiScale.Scale = baseScale
		win.Visible = false
	end
	host:GetPropertyChangedSignal("Visible"):Connect(function()
		if host.Visible then enter() else leave() end
	end)
	local kb = C(win, "Titlebar"):FindFirstChild("Keybind") -- подпись "Keybind : RightShift" в SGS не нужна
	if kb then kb.Visible = false end
	if host.Visible then enter() end -- первый таб SGS активируется сам до того как мы подключились
else
	task.defer(toggleWindow) -- entrance animation
end
