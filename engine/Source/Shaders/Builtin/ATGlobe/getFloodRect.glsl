mat3 czm_getFloodRect(mat4 ypx, mat4 ypy, mat4 ypz, float minx, float miny, float minz, float maxx, float maxy, float maxz, int yp_max_index){
    for(int i = 0; i <= 16; i++){
        mat3 xyxy = czm_getIndexMat(i, ypx, ypy, ypz, yp_max_index);

        if(xyxy[0][0] != 0.0 && xyxy[0][1] != 0.0){

              minx = min(minx, xyxy[0][0]);
              maxx = max(maxx, xyxy[0][0]);

              miny = min(miny, xyxy[0][1]);
              maxy = max(maxy, xyxy[0][1]);

              minz = min(minz, xyxy[0][2]);
              maxz = max(maxz, xyxy[0][2]);

        }
    }
    return mat3(minx-999.0, miny-999.0, minz-999.0, maxx+999.0, maxy+999.0, maxz+999.0, 0.0, 0.0, 0.0);

}