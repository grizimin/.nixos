{ pkgs, ... }:

{

  programs.vscode = {
    enable = true;
    package = pkgs.vscode;

    profiles.default.extensions = with pkgs.vscode-extensions; [
      ms-vscode.cpptools # Microsoft C/C++ tools (intellisense, debugging, etc.)
      ms-vscode.cmake-tools # CMake integration
      twxs.cmake # CMake syntax highlighting
      ms-vscode.cpptools-extension-pack # Meta-extension pack for C++
      bbenoist.nix # basic Nix syntax
      jnoortheen.nix-ide # advanced IDE support (recommended)
      vscodevim.vim
      yzhang.markdown-all-in-one
      ms-dotnettools.csharp
      ms-dotnettools.vscode-dotnet-runtime
      esbenp.prettier-vscode
      eamodio.gitlens
    ];

    profiles.default.userSettings = {
      "editor.formatOnSave" = true;
      "C_Cpp.intelliSenseEngine" = "Default";
      "C_Cpp.updateChannel" = "Default";
      "window.menuBarVisibility" = "compact";
      "editor.minimap.enabled" = false;
      "workbench.statusBar.visible" = true;
      "editor.renderWhitespace" = "none";
      "chat.commandCenter.enabled" = false;
      "window.commandCenter" = false;
      "workbench.navigationControl.enabled" = false;
      "workbench.layoutControl.enabled" = false;
      "breadcrumbs.enabled" = false;
      "editor.cursorBlinking" = "expand";
      "editor.cursorSmoothCaretAnimation" = "on";
      "editor.fontSize" = 16;
      "editor.fontFamily" = "JetBrains Mono";

      "vim.insertModeKeyBindings" = [
        {
          "before" = [
            "j"
            "k"
          ];
          "after" = [ "<Esc>" ];
        }
      ];

      "vim.timeout" = 200; # milliseconds
      "vim.timeoutlen" = 200;
      "vim.leader" = "<space>";

      "vim.normalModeKeyBindingsNonRecursive" = [

      ];
    };

    profiles.default.keybindings = [
      # Navigation
      {
        key = "ctrl+h";
        command = "workbench.action.navigateLeft";
      }
      {
        key = "ctrl+l";
        command = "workbench.action.navigateRight";
      }
      {
        key = "ctrl+k";
        command = "workbench.action.navigateUp";
      }
      {
        key = "ctrl+j";
        command = "workbench.action.navigateDown";
      }
      {
        key = "f f";
        command = "workbench.action.quickOpen";
        when = "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)";
      }
      {
        key = "space e";
        command = "workbench.action.toggleSidebarVisibility";
        when = "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)";
      }
      {
        key = "space .";
        command = "workbench.action.nextEditorInGroup";
        when = "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)";
      }
      {
        key = "space ,";
        command = "workbench.action.previousEditorInGroup";
        when = "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)";
      }
      {
        key = "space /";
        command = "workbench.action.closeActiveEditor";
        when = "vim.mode == 'Normal' && editorTextFocus";
      }

      # Coding
      {
        key = "shift+j";
        command = "editor.action.moveLinesDownAction";
        when = "vim.mode != 'Insert' && editorTextFocus";
      }
      {
        key = "shift+k";
        command = "editor.action.moveLinesUpAction";
        when = "vim.mode != 'Insert' && editorTextFocus";
      }
      {
        key = "shift+k";
        command = "editor.action.showHover";
        when = "vim.mode == 'Normal' && editorTextFocus";
      }
      {
        key = "space g d";
        command = "editor.action.revealDefinition";
        when = "vim.mode == 'Normal' && editorTextFocus";
      }
      {
        key = "space g r";
        command = "editor.action.goToReferences";
        when = "vim.mode == 'Normal' && editorTextFocus";
      }
      {
        key = "space f g";
        command = "workbench.action.findInFiles";
        when = "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)";
      }
      {
        key = "space g g";
        command = "workbench.view.scm";
        when = "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)";
      }

      # File explorer
      {
        key = "r";
        command = "renameFile";
        when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        key = "y";
        command = "filesExplorer.copy";
        when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        key = "p";
        command = "filesExplorer.paste";
        when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        key = "d";
        command = "deleteFile";
        when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        key = "a";
        command = "explorer.newFile";
        when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        key = "shift+a";
        command = "explorer.newFolder";
        when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        key = "s";
        command = "explorer.openToSide";
        when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
      {
        key = "enter";
        command = "explorer.openAndPassFocus";
        when = "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
      }
    ];
  };
}
