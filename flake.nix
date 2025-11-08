{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {

      empty = {
        path = ./empty;
        description = "Empty flake";
      };

      python = {
        path = ./java;
        description = "Java template";
        welcomeText = ''
          # Getting started
          - Run `nix run`
        '';
      };
      
    defaultTemplate = self.templates.empty;

  };
}
