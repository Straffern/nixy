{

  imports = [ ./home.anotherhadi.com ./homepage.nix ];

  services.nginx.virtualHosts = {
    "anotherhadi.com" = {
      serverAliases = [ "www.anotherhadi.com" ];
      root = "/etc/www/anotherhadi.com";
    };
    # "home.anotherhadi.com" = {
    #   serverAliases = [ "jack.anotherhadi.com" ];
    #   root = "/etc/www/home.anotherhadi.com";
    # };
    "test.anotherhadi.com" = { root = "/var/www/test"; };
  };
  environment.etc."www/anotherhadi.com" = { source = ./anotherhadi.com; };
}
