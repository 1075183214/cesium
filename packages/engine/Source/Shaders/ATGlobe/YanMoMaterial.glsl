uniform vec4 floodVar;

Material czm_getMaterial(czm_materialInput materialInput){

    Material material = czm_getDefaultMaterial(materialInput);

    if(materialInput.height < floodVar.y){
        material.alpha = 0.3;
    }else{
        material.alpha = 0.0;
    }

    float rr = 0.0;
    if(materialInput.height < floodVar.y){
        rr = (materialInput.height - floodVar.x) / floodVar.w / 2.0;
    }

    material.diffuse = vec3(1.0 - rr, rr, 0.0);

    return material;

}