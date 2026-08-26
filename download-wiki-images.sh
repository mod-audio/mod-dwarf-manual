#!/usr/bin/env bash
#
# Downloads every wiki-sourced image referenced by an IMAGE NEEDED marker
# in the MOD Dwarf manual, into docs/assets/<section>/, ready to reference
# from the Markdown pages (see CONTRIBUTING.md).
#
# Run this from the root of the mod-dwarf-manual repo:
#   chmod +x download-wiki-images.sh
#   ./download-wiki-images.sh
#
# Safe to re-run: wget -nc skips files that were already downloaded.

set -euo pipefail

BASE="docs/assets"

mkdir -p \
  "$BASE/connecting-gear" \
  "$BASE/first-pedalboard" \
  "$BASE/getting-started" \
  "$BASE/maintaining" \
  "$BASE/pedalboards-snapshots" \
  "$BASE/playing-live" \
  "$BASE/reference" \
  "$BASE/settings"

echo "Downloading 104 images..."
fail=0

wget -nc -q --show-progress -O "$BASE/connecting-gear/AggregatedMIDIPorts.png" "https://wiki.mod.audio/images/2/2f/AggregatedMIDIPorts.png" || { echo "FAILED: https://wiki.mod.audio/images/2/2f/AggregatedMIDIPorts.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/connecting-gear/Android_MODavailable.png" "https://wiki.mod.audio/images/5/58/Android_MODavailable.png" || { echo "FAILED: https://wiki.mod.audio/images/5/58/Android_MODavailable.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/connecting-gear/Bluetooth-win-1.png" "https://wiki.mod.audio/images/3/38/Bluetooth-win-1.png" || { echo "FAILED: https://wiki.mod.audio/images/3/38/Bluetooth-win-1.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/connecting-gear/Device-updates.png" "https://wiki.mod.audio/images/2/22/Device-updates.png" || { echo "FAILED: https://wiki.mod.audio/images/2/22/Device-updates.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/connecting-gear/IPhoneBluetoothON.PNG" "https://wiki.mod.audio/images/c/cf/IPhoneBluetoothON.PNG" || { echo "FAILED: https://wiki.mod.audio/images/c/cf/IPhoneBluetoothON.PNG"; fail=1; }
wget -nc -q --show-progress -O "$BASE/connecting-gear/MIDIPorts.png" "https://wiki.mod.audio/images/9/96/MIDIPorts.png" || { echo "FAILED: https://wiki.mod.audio/images/9/96/MIDIPorts.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/connecting-gear/MacOSX_BTConnectDevice.png" "https://wiki.mod.audio/images/4/41/MacOSX_BTConnectDevice.png" || { echo "FAILED: https://wiki.mod.audio/images/4/41/MacOSX_BTConnectDevice.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/connecting-gear/SeparatedMIDIPorts.png" "https://wiki.mod.audio/images/f/f7/SeparatedMIDIPorts.png" || { echo "FAILED: https://wiki.mod.audio/images/f/f7/SeparatedMIDIPorts.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/connecting-gear/VirtualMIDIPort.png" "https://wiki.mod.audio/images/d/d6/VirtualMIDIPort.png" || { echo "FAILED: https://wiki.mod.audio/images/d/d6/VirtualMIDIPort.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/Add_to_cart_button.png" "https://wiki.mod.audio/images/f/fe/Add_to_cart_button.png" || { echo "FAILED: https://wiki.mod.audio/images/f/fe/Add_to_cart_button.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/AssigmentToMIDIController.png" "https://wiki.mod.audio/images/f/fc/AssigmentToMIDIController.png" || { echo "FAILED: https://wiki.mod.audio/images/f/fc/AssigmentToMIDIController.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/AssigningToControlChain.png" "https://wiki.mod.audio/images/8/81/AssigningToControlChain.png" || { echo "FAILED: https://wiki.mod.audio/images/8/81/AssigningToControlChain.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/AssigningToNOControlChain.png" "https://wiki.mod.audio/images/2/28/AssigningToNOControlChain.png" || { echo "FAILED: https://wiki.mod.audio/images/2/28/AssigningToNOControlChain.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/AssignmentsWindow.png" "https://wiki.mod.audio/images/c/c6/AssignmentsWindow.png" || { echo "FAILED: https://wiki.mod.audio/images/c/c6/AssignmentsWindow.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/AudioCables_MODWebGUI.gif" "https://wiki.mod.audio/images/6/6f/AudioCables_MODWebGUI.gif" || { echo "FAILED: https://wiki.mod.audio/images/6/6f/AudioCables_MODWebGUI.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/CPU_heavyPedalboard.png" "https://wiki.mod.audio/images/4/49/CPU_heavyPedalboard.png" || { echo "FAILED: https://wiki.mod.audio/images/4/49/CPU_heavyPedalboard.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/CVCables_MODWebGUI.gif" "https://wiki.mod.audio/images/7/74/CVCables_MODWebGUI.gif" || { echo "FAILED: https://wiki.mod.audio/images/7/74/CVCables_MODWebGUI.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/CogwheelPlugins.png" "https://wiki.mod.audio/images/b/b3/CogwheelPlugins.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b3/CogwheelPlugins.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/DWARF_AssigningPluginsParametersToControls1.png" "https://wiki.mod.audio/images/5/5b/DWARF_AssigningPluginsParametersToControls1.png" || { echo "FAILED: https://wiki.mod.audio/images/5/5b/DWARF_AssigningPluginsParametersToControls1.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/DWARF_AssigningPluginsParametersToControls2.png" "https://wiki.mod.audio/images/6/60/DWARF_AssigningPluginsParametersToControls2.png" || { echo "FAILED: https://wiki.mod.audio/images/6/60/DWARF_AssigningPluginsParametersToControls2.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/DragAndDropPlugins_MODWebGUI.gif" "https://wiki.mod.audio/images/d/dd/DragAndDropPlugins_MODWebGUI.gif" || { echo "FAILED: https://wiki.mod.audio/images/d/dd/DragAndDropPlugins_MODWebGUI.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/Dwarf_CharacterInputScreen.png" "https://wiki.mod.audio/images/6/61/Dwarf_CharacterInputScreen.png" || { echo "FAILED: https://wiki.mod.audio/images/6/61/Dwarf_CharacterInputScreen.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/Dwarf_SavePedalboardScreen.png" "https://wiki.mod.audio/images/2/20/Dwarf_SavePedalboardScreen.png" || { echo "FAILED: https://wiki.mod.audio/images/2/20/Dwarf_SavePedalboardScreen.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/GxQuack_PluginsBar.png" "https://wiki.mod.audio/images/6/68/GxQuack_PluginsBar.png" || { echo "FAILED: https://wiki.mod.audio/images/6/68/GxQuack_PluginsBar.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/LabelCV.png" "https://wiki.mod.audio/images/8/8a/LabelCV.png" || { echo "FAILED: https://wiki.mod.audio/images/8/8a/LabelCV.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/LoadManageSnapshots.png" "https://wiki.mod.audio/images/8/88/LoadManageSnapshots.png" || { echo "FAILED: https://wiki.mod.audio/images/8/88/LoadManageSnapshots.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/MIDIAssignmentPopUp.png" "https://wiki.mod.audio/images/5/57/MIDIAssignmentPopUp.png" || { echo "FAILED: https://wiki.mod.audio/images/5/57/MIDIAssignmentPopUp.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/MIDICables_MODWebGUI.gif" "https://wiki.mod.audio/images/5/54/MIDICables_MODWebGUI.gif" || { echo "FAILED: https://wiki.mod.audio/images/5/54/MIDICables_MODWebGUI.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/ManageCVPortsButton.png" "https://wiki.mod.audio/images/b/b2/ManageCVPortsButton.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b2/ManageCVPortsButton.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/NewPedalboardMODWebGUI.gif" "https://wiki.mod.audio/images/a/a0/NewPedalboardMODWebGUI.gif" || { echo "FAILED: https://wiki.mod.audio/images/a/a0/NewPedalboardMODWebGUI.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/PaidPluginPage.png" "https://wiki.mod.audio/images/d/dc/PaidPluginPage.png" || { echo "FAILED: https://wiki.mod.audio/images/d/dc/PaidPluginPage.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/PatchingPlugin_MODWebGUI.gif" "https://wiki.mod.audio/images/1/17/PatchingPlugin_MODWebGUI.gif" || { echo "FAILED: https://wiki.mod.audio/images/1/17/PatchingPlugin_MODWebGUI.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/PluginIcons.png" "https://wiki.mod.audio/images/e/ea/PluginIcons.png" || { echo "FAILED: https://wiki.mod.audio/images/e/ea/PluginIcons.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/PluginParameterWindow.png" "https://wiki.mod.audio/images/e/e9/PluginParameterWindow.png" || { echo "FAILED: https://wiki.mod.audio/images/e/e9/PluginParameterWindow.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/PluginStoreWebGUI.png" "https://wiki.mod.audio/images/b/b5/PluginStoreWebGUI.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b5/PluginStoreWebGUI.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/SnapshotsButton.png" "https://wiki.mod.audio/images/0/03/SnapshotsButton.png" || { echo "FAILED: https://wiki.mod.audio/images/0/03/SnapshotsButton.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/SnapshotsMenu.png" "https://wiki.mod.audio/images/a/a6/SnapshotsMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/a/a6/SnapshotsMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/WebGUI_Action_bar_SavePedalboard.png" "https://wiki.mod.audio/images/e/ec/WebGUI_Action_bar_SavePedalboard.png" || { echo "FAILED: https://wiki.mod.audio/images/e/ec/WebGUI_Action_bar_SavePedalboard.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/WebGUI_PedalboardView.png" "https://wiki.mod.audio/images/9/95/WebGUI_PedalboardView.png" || { echo "FAILED: https://wiki.mod.audio/images/9/95/WebGUI_PedalboardView.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/first-pedalboard/WebGUI_Pedalboard_Library.png" "https://wiki.mod.audio/images/e/e9/WebGUI_Pedalboard_Library.png" || { echo "FAILED: https://wiki.mod.audio/images/e/e9/WebGUI_Pedalboard_Library.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/getting-started/Dwarf_ConnectionsOverview.png" "https://wiki.mod.audio/images/4/4e/Dwarf_ConnectionsOverview.png" || { echo "FAILED: https://wiki.mod.audio/images/4/4e/Dwarf_ConnectionsOverview.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/getting-started/Dwarf_FrontPanel.png" "https://wiki.mod.audio/images/b/b1/Dwarf_FrontPanel.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b1/Dwarf_FrontPanel.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/getting-started/Dwarf_UsageOverview.png" "https://wiki.mod.audio/images/0/0a/Dwarf_UsageOverview.png" || { echo "FAILED: https://wiki.mod.audio/images/0/0a/Dwarf_UsageOverview.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/maintaining/Dwarf_SystemUpgradeMenu.png" "https://wiki.mod.audio/images/9/9a/Dwarf_SystemUpgradeMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/9/9a/Dwarf_SystemUpgradeMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/maintaining/Gui-23.png" "https://wiki.mod.audio/images/c/c2/Gui-23.png" || { echo "FAILED: https://wiki.mod.audio/images/c/c2/Gui-23.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/maintaining/MODWebGUI_SettingsPage.png" "https://wiki.mod.audio/images/5/56/MODWebGUI_SettingsPage.png" || { echo "FAILED: https://wiki.mod.audio/images/5/56/MODWebGUI_SettingsPage.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/maintaining/MOD_WebGUI_Advanced_Settings.png" "https://wiki.mod.audio/images/6/63/MOD_WebGUI_Advanced_Settings.png" || { echo "FAILED: https://wiki.mod.audio/images/6/63/MOD_WebGUI_Advanced_Settings.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/maintaining/MOD_WebGUI_Settings_Dangerous.png" "https://wiki.mod.audio/images/f/f8/MOD_WebGUI_Settings_Dangerous.png" || { echo "FAILED: https://wiki.mod.audio/images/f/f8/MOD_WebGUI_Settings_Dangerous.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Activating-param.png" "https://wiki.mod.audio/images/b/b7/Activating-param.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b7/Activating-param.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/AdvancedAssignSettings.png" "https://wiki.mod.audio/images/8/86/AdvancedAssignSettings.png" || { echo "FAILED: https://wiki.mod.audio/images/8/86/AdvancedAssignSettings.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Assign-macro-knob.png" "https://wiki.mod.audio/images/2/23/Assign-macro-knob.png" || { echo "FAILED: https://wiki.mod.audio/images/2/23/Assign-macro-knob.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/CVPlugins.png" "https://wiki.mod.audio/images/e/ed/CVPlugins.png" || { echo "FAILED: https://wiki.mod.audio/images/e/ed/CVPlugins.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Cv-assign-asvanced.png" "https://wiki.mod.audio/images/6/62/Cv-assign-asvanced.png" || { echo "FAILED: https://wiki.mod.audio/images/6/62/Cv-assign-asvanced.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Cv-assign.png" "https://wiki.mod.audio/images/6/69/Cv-assign.png" || { echo "FAILED: https://wiki.mod.audio/images/6/69/Cv-assign.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Cv-dashboard.png" "https://wiki.mod.audio/images/e/ea/Cv-dashboard.png" || { echo "FAILED: https://wiki.mod.audio/images/e/ea/Cv-dashboard.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Cv-manage-selected.png" "https://wiki.mod.audio/images/b/b2/Cv-manage-selected.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b2/Cv-manage-selected.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Cv-param-large.gif" "https://wiki.mod.audio/images/3/30/Cv-param-large.gif" || { echo "FAILED: https://wiki.mod.audio/images/3/30/Cv-param-large.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Cv-param-small.gif" "https://wiki.mod.audio/images/7/7e/Cv-param-small.gif" || { echo "FAILED: https://wiki.mod.audio/images/7/7e/Cv-param-small.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Cv-range-addressing_.gif" "https://wiki.mod.audio/images/e/e8/Cv-range-addressing_.gif" || { echo "FAILED: https://wiki.mod.audio/images/e/e8/Cv-range-addressing_.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Cv-simple-addressing.gif" "https://wiki.mod.audio/images/4/46/Cv-simple-addressing.gif" || { echo "FAILED: https://wiki.mod.audio/images/4/46/Cv-simple-addressing.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Drum-machine.png" "https://wiki.mod.audio/images/e/ec/Drum-machine.png" || { echo "FAILED: https://wiki.mod.audio/images/e/ec/Drum-machine.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Dwarf_OrganizingBanks.png" "https://wiki.mod.audio/images/b/b6/Dwarf_OrganizingBanks.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b6/Dwarf_OrganizingBanks.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Enable-macro-knob.png" "https://wiki.mod.audio/images/d/d1/Enable-macro-knob.png" || { echo "FAILED: https://wiki.mod.audio/images/d/d1/Enable-macro-knob.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/InternalCV.png" "https://wiki.mod.audio/images/2/2e/InternalCV.png" || { echo "FAILED: https://wiki.mod.audio/images/2/2e/InternalCV.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/MODWebGUI_Banks.png" "https://wiki.mod.audio/images/d/de/MODWebGUI_Banks.png" || { echo "FAILED: https://wiki.mod.audio/images/d/de/MODWebGUI_Banks.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/MODWebGUI_BanksTrashBin.png" "https://wiki.mod.audio/images/1/1c/MODWebGUI_BanksTrashBin.png" || { echo "FAILED: https://wiki.mod.audio/images/1/1c/MODWebGUI_BanksTrashBin.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/Macro-control.gif" "https://wiki.mod.audio/images/3/3a/Macro-control.gif" || { echo "FAILED: https://wiki.mod.audio/images/3/3a/Macro-control.gif"; fail=1; }
wget -nc -q --show-progress -O "$BASE/pedalboards-snapshots/NoCV.png" "https://wiki.mod.audio/images/3/32/NoCV.png" || { echo "FAILED: https://wiki.mod.audio/images/3/32/NoCV.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/Concepts_and_Modes.png" "https://wiki.mod.audio/images/1/13/Concepts_and_Modes.png" || { echo "FAILED: https://wiki.mod.audio/images/1/13/Concepts_and_Modes.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/Dwarf_Actuators.png" "https://wiki.mod.audio/images/2/26/Dwarf_Actuators.png" || { echo "FAILED: https://wiki.mod.audio/images/2/26/Dwarf_Actuators.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/Dwarf_Display.png" "https://wiki.mod.audio/images/2/22/Dwarf_Display.png" || { echo "FAILED: https://wiki.mod.audio/images/2/22/Dwarf_Display.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/Dwarf_FootswitchA.png" "https://wiki.mod.audio/images/d/d6/Dwarf_FootswitchA.png" || { echo "FAILED: https://wiki.mod.audio/images/d/d6/Dwarf_FootswitchA.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/Dwarf_MenuButton.png" "https://wiki.mod.audio/images/7/7c/Dwarf_MenuButton.png" || { echo "FAILED: https://wiki.mod.audio/images/7/7c/Dwarf_MenuButton.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/Dwarf_MenuItems.png" "https://wiki.mod.audio/images/c/c7/Dwarf_MenuItems.png" || { echo "FAILED: https://wiki.mod.audio/images/c/c7/Dwarf_MenuItems.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/Dwarf_SubPagesButtons.png" "https://wiki.mod.audio/images/b/bb/Dwarf_SubPagesButtons.png" || { echo "FAILED: https://wiki.mod.audio/images/b/bb/Dwarf_SubPagesButtons.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/FS_AB-ToolModeAccess.png" "https://wiki.mod.audio/images/3/30/FS_AB-ToolModeAccess.png" || { echo "FAILED: https://wiki.mod.audio/images/3/30/FS_AB-ToolModeAccess.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/LeftMostEncoder_MODDwarf.png" "https://wiki.mod.audio/images/7/73/LeftMostEncoder_MODDwarf.png" || { echo "FAILED: https://wiki.mod.audio/images/7/73/LeftMostEncoder_MODDwarf.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/MODDwarfTuner_MuteActive.png" "https://wiki.mod.audio/images/c/c7/MODDwarfTuner_MuteActive.png" || { echo "FAILED: https://wiki.mod.audio/images/c/c7/MODDwarfTuner_MuteActive.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/MODDwarfTuner_MuteNotActive.png" "https://wiki.mod.audio/images/a/a4/MODDwarfTuner_MuteNotActive.png" || { echo "FAILED: https://wiki.mod.audio/images/a/a4/MODDwarfTuner_MuteNotActive.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/MODDwarf_ButtonsCorrespondenceWithScreen.png" "https://wiki.mod.audio/images/8/8c/MODDwarf_ButtonsCorrespondenceWithScreen.png" || { echo "FAILED: https://wiki.mod.audio/images/8/8c/MODDwarf_ButtonsCorrespondenceWithScreen.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/MOD_Dwarf_FS_B-C-NavigationMode.png" "https://wiki.mod.audio/images/5/51/MOD_Dwarf_FS_B%2BC-NavigationMode.png" || { echo "FAILED: https://wiki.mod.audio/images/5/51/MOD_Dwarf_FS_B%2BC-NavigationMode.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/MOD_Dwarf_FS_B-C-Up-DownArrows.png" "https://wiki.mod.audio/images/6/6e/MOD_Dwarf_FS_B%2BC-Up%26DownArrows.png" || { echo "FAILED: https://wiki.mod.audio/images/6/6e/MOD_Dwarf_FS_B%2BC-Up%26DownArrows.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/MOD_Dwarf_wiki_NavigationMode.png" "https://wiki.mod.audio/images/d/de/MOD_Dwarf_wiki_NavigationMode.png" || { echo "FAILED: https://wiki.mod.audio/images/d/de/MOD_Dwarf_wiki_NavigationMode.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/MOD_Dwarf_wiki_tempo.png" "https://wiki.mod.audio/images/0/02/MOD_Dwarf_wiki_tempo.png" || { echo "FAILED: https://wiki.mod.audio/images/0/02/MOD_Dwarf_wiki_tempo.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/playing-live/MOD_Dwarf_wiki_tuner.png" "https://wiki.mod.audio/images/4/48/MOD_Dwarf_wiki_tuner.png" || { echo "FAILED: https://wiki.mod.audio/images/4/48/MOD_Dwarf_wiki_tuner.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/reference/Dwarf_ports.png" "https://wiki.mod.audio/images/5/59/Dwarf_ports.png" || { echo "FAILED: https://wiki.mod.audio/images/5/59/Dwarf_ports.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/reference/MIDI_Implementation_MOD_devices.jpg" "https://wiki.mod.audio/images/c/cb/MIDI_Implementation_MOD_devices.jpg" || { echo "FAILED: https://wiki.mod.audio/images/c/cb/MIDI_Implementation_MOD_devices.jpg"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_AppearanceMenu.png" "https://wiki.mod.audio/images/4/43/Dwarf_AppearanceMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/4/43/Dwarf_AppearanceMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_AudioInputsMenu.png" "https://wiki.mod.audio/images/3/3f/Dwarf_AudioInputsMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/3/3f/Dwarf_AudioInputsMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_AudioOutputsMenu.png" "https://wiki.mod.audio/images/d/db/Dwarf_AudioOutputsMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/d/db/Dwarf_AudioOutputsMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_BluetoothMenu.png" "https://wiki.mod.audio/images/a/a1/Dwarf_BluetoothMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/a/a1/Dwarf_BluetoothMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_ControllerBehaviorMenu.png" "https://wiki.mod.audio/images/1/12/Dwarf_ControllerBehaviorMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/1/12/Dwarf_ControllerBehaviorMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_DisplayMenu.png" "https://wiki.mod.audio/images/3/31/Dwarf_DisplayMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/3/31/Dwarf_DisplayMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_HeaphonesOutputMenu.png" "https://wiki.mod.audio/images/6/60/Dwarf_HeaphonesOutputMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/6/60/Dwarf_HeaphonesOutputMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_InputProcessingMenu.png" "https://wiki.mod.audio/images/5/54/Dwarf_InputProcessingMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/5/54/Dwarf_InputProcessingMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_MIDIMenu.png" "https://wiki.mod.audio/images/2/29/Dwarf_MIDIMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/2/29/Dwarf_MIDIMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_OutputProcessingMenu.png" "https://wiki.mod.audio/images/d/df/Dwarf_OutputProcessingMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/d/df/Dwarf_OutputProcessingMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_Settings-Menu_Items.png" "https://wiki.mod.audio/images/f/f1/Dwarf_Settings-Menu_Items.png" || { echo "FAILED: https://wiki.mod.audio/images/f/f1/Dwarf_Settings-Menu_Items.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_SettingsMenu.png" "https://wiki.mod.audio/images/6/60/Dwarf_SettingsMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/6/60/Dwarf_SettingsMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_SyncMenu.png" "https://wiki.mod.audio/images/7/71/Dwarf_SyncMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/7/71/Dwarf_SyncMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_SystemBehaviorMenu.png" "https://wiki.mod.audio/images/4/40/Dwarf_SystemBehaviorMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/4/40/Dwarf_SystemBehaviorMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_UserProfilesMenu.png" "https://wiki.mod.audio/images/4/4a/Dwarf_UserProfilesMenu.png" || { echo "FAILED: https://wiki.mod.audio/images/4/4a/Dwarf_UserProfilesMenu.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/Dwarf_centralButtonHighlight.png" "https://wiki.mod.audio/images/b/b7/Dwarf_centralButtonHighlight.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b7/Dwarf_centralButtonHighlight.png"; fail=1; }
wget -nc -q --show-progress -O "$BASE/settings/SettingsButton.png" "https://wiki.mod.audio/images/b/b5/SettingsButton.png" || { echo "FAILED: https://wiki.mod.audio/images/b/b5/SettingsButton.png"; fail=1; }

if [ "$fail" -ne 0 ]; then
  echo
  echo "Some downloads failed — re-run the script to retry (already-downloaded files are skipped)."
  exit 1
fi

echo "Done. Images saved under $BASE/<section>/."
echo "Next: open each page's IMAGE NEEDED comment, replace it with a real"
echo "![description](../assets/<section>/<file>) line, per CONTRIBUTING.md."
