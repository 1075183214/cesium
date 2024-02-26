const ExpandByATGlobe = {
  //建筑物混合遮挡
  mixedOcclusion: {
    enable: false, //是否开启混合遮挡
    tilesFbo: undefined,
    tilesFboClear: undefined,
    newFrame: false,
  },
};
//同时也标识了有该属性的Cesium，来判断为ATGlobe修改后的Cesium
export default ExpandByATGlobe;
