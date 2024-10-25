# Bot Panel Documentation

This documentation assumes that you have already installed [BotPanel](https://dev.botpanel.xyz). If you have not already, you can find the instructions for doing so below

[Bot Panel w/ Bot Maker for Discord Integration Guide](https://github.com/botpanel/bmd)<br>
[Bot Panel w/ Discord Bot Maker Integration Guide](https://github.com/botpanel/dbm)

* [More on Vanity URLs](https://github.com/botpanel/documentation#more-on-vanity-urls)
* [Dashboard Sections](https://github.com/botpanel/documentation#dashboard-sections)
   * [Basic Usage](https://github.com/botpanel/documentation#basic-usage)
   * [Default Section](https://github.com/botpanel/documentation#default-section)
* [Header Components](https://github.com/botpanel/documentation#header-components)
* [Input Components](https://github.com/botpanel/documentation#input-components)
   * [Text Input Components](https://github.com/botpanel/documentation#text-input-components)
   * [Number Input Components](https://github.com/botpanel/documentation#number-input-components)
   * [Checkbox Input Components](https://github.com/botpanel/documentation#checkbox-input-components)
   * [Select Input Components](https://github.com/botpanel/documentation#select-input-components)
   * [Channel Select Input Components](https://github.com/botpanel/documentation#channel-select-input-components)
   * [Role Select Input Components](https://github.com/botpanel/documentation#role-select-input-components)

# More on Vanity URLs

Vanity URLs are what your users use to access your bot, however your user dashboard is also accessible by using its application id in place of the vanity url. For example:

`https://botpanel.xyz/dashboard/VANITY_URL` -> `https://botpanel.xyz/dashboard/APPLICATION_ID`

As application IDs are unique UUIDv4 strings, vanity URLs are not allowed to match said pattern. Additionally all vanity URLs must only consist of alphanumerics, underscores, or dashes.

# Dashboard Sections

### Basic Usage
Dashboard sections are the best way to organize content across multiple pages, such as "moderation," "welcome," etc. These can be modified by clicking the `Manage Sections` button in the top right of your developer dashboard. Type into the `Section Name` text input the desired title for your section and hit the + icon to the right. To select a section to edit, click on it from the list of your sections. To reorder your sections hold the three dot icon to the left of the section name in the `Manage Sections` dropdown. To edit the name of a section, click the pencil icon to the right of the section name, the section name will turn into a text input, type in the desired new name, then either hit the X icon if you wish to cancel the operation or the check icon if you wish to save, make sure you either save or publish your dashboard changes by hitting the `Save` button after doing this. To remove a section hit the trash icon to the right of the section title.

### Default Section
Sections can be named whatever you want, however there is one reserved section name called `DEFAULT`. The `DEFAULT` section is the first section shown to the user on their dashboard, think of it like a home section. It will not display on the left navbar on your client dashboard, and thus if you have no other sections it will appear that your application has no sections. If you dont have a `DEFAULT` section then the first section in your list of sections will be the section shown to the user when they navigate to their dashboard.

# Header Components

Header components are the best way to organize content on a single page, allowing for a large title and description.

# Input Components

Input components are what allow you to give your users the permission of changing specific values in your bot. There are several types of Input Components, each with their own unique set of parameters.

When clicking the `Add component` button on your user dashboard editor, a modal will pop up with these required options that are shared among all input components:

| Field Name    | Description                                                                                                                                                                                                                                                                                                                                             |
|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Name          | This is the name of the input component, and will be displayed in a large header.                                                                                                                                                                                                                                                                       |
| Description   | This is the description of the input component, displayed under the header in smaller font.                                                                                                                                                                                                                                                             |
| Variable Name | This is the name of the server variable that the input component will be stored into. For example: if I have a string input component with the variable name `welcomeMessage`, then when the value is saved from the user dashboard, the server data for the selected guild with name `welcomeMessage` will be updated to the value from the dashboard. |
| Input Type    | Input type for the component.                                                                                                                                                                                                                                                                                                                           |

Certain components also have options that are unique to the component type. For example, text inputs having a max *length* and number inputs having a max *value*.

## Text Input Components

The Text Input Component is used for collecting strings of data, or text.

| Additional Field Name | Description                                                                                                                  |
|-----------------------|------------------------------------------------------------------------------------------------------------------------------|
| Max Length            | The maximum length of the text.                                                                                              |
| Min Length            | The minimum length of the text.                                                                                              |
| Placeholder           | The HTML placeholder value. This is not sent when a component is saved and doesnt have another value, it is purely cosmetic. |
| Long text             | Whether to display your text input as a single line input or a multiline input.                                              |

## Number Input Components

The Number Input Component is used for when you want an input to be validated and stored as a number.

| Additional Field Name | Description                                                                                                                  |
|-----------------------|------------------------------------------------------------------------------------------------------------------------------|
| Max                   | The maximum value on the number.                                                                                             |
| Min                   | The minimum length on the number.                                                                                            |
| Step                  | The required multiple on the number. For example: If you want to enforce an increment of 3, 9 is a valid input, 2 is not.    |
| Placeholder           | The HTML placeholder value. This is not sent when a component is saved and doesnt have another value, it is purely cosmetic. |

## Checkbox Input Components

For checkbox input components, you will find an `Add Option` button, click this to add an option. Two text boxes will appear, the `Name` textbox and `Value` textbox. The `Name` textbox is what will be displayed to the user, the `Value` textbox is what will be sent to your bot. For example, you could have the name `Dont Permit` and the value `dontPermit`, `Dont Permit` will be displayed to your user, and when your user selects that checkbox `dontPermit` will be saved to the server data. **Values must be alphanumeric.**

## Select Input Components

Select Input Components work very similarly to Checkbox Input Components, but they are displayed in a list and you can select multiple by toggling the `Multiple` switch. If the `Multiple` switch is enabled then the user selected values will be sent in a CSV format. For example if they have selected `option1`, `option2`, and `option3`, you will receive `option1,option2,option3`.

## Channel Select Input Components

All channel selects work very similarly, all allow multiple selections to be made. The user's selected channels will be stored as the channel ID, or a list of channel IDs if you have the `Multiple` switch enabled.

## Role Select Input Component

The role input select component is used when you want to select from a list of roles. Multiple selections are allowed using the `Multiple` toggle. You can permit/deny the @everyone role being in the list by toggling the `Enable @everone?` switch. You can permit/deny bot and application roles by toggling the `Show bot roles?` switch.
