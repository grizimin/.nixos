{ pkgs, ... }:
{
  # home.packages = with pkgs; [
  #   nixd
  # ];

  # programs.zed-editor = {
  #   enable = true;

  #   extensions = [
  #     "nix"
  #     "make"
  #   ];

  #   userSettings = {
  #     hour_format = "hour24";
  #     auto_update = true;
  #     vim_mode = true;

  #     terminal = {
  #       alternate_scroll = "off";
  #       blinking = "off";
  #       copy_on_select = false;
  #       dock = "bottom";
  #       detect_venv = {
  #         on = {
  #           directories = [
  #             ".env"
  #             "env"
  #             ".venv"
  #             "venv"
  #           ];
  #           activate_script = "default";
  #         };
  #       };
  #     };

  #     assistant = {
  #       enabled = false;
  #     };

  #     project_panel.dock = "left";

  #     toolbar = {
  #       breadcrumbs = true;
  #       quick_actions = false;
  #       selections_menu = false;
  #     };

  #     features = {
  #       copilot = false;
  #       edit_prediction_provider = "zed";
  #     };

  #     linked_edits = true;
  #     hide_mouse = "on_typing_and_movement";
  #     inlay_hints.enabled = true;

  #     telemetry = {
  #       metrics = false;
  #       diagnostics = false;
  #     };

  #     cursor_blink = false;
  #     relative_line_numbers = true;

  #     scrollbar.show = "never";

  #     indent_guides = {
  #       enabled = true;
  #       coloring = "indent_aware";
  #     };

  #     git = {
  #       git_gutter = "tracked_files";
  #       inline_blame.enabled = true;
  #     };

  #     languages = {
  #       LaTeX.soft_wrap = "preferred_line_length";
  #     };

  #   };
  # };
}
