{ jdk }:
{
  packageOverrides = p: {
    gradle = (p.gradleGen.override {
      java = p.${jdk};
    }).gradle_latest;
    myEclipse = with p.eclipses; eclipseWithPlugins {
      eclipse = eclipse-platform;
      jvmArgs = [ "-Xmx2048m" ];
      plugins = [ plugins.color-theme plugins.eclemma ];
    };
  };
}
