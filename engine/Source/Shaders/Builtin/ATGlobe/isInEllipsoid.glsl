bool czm_isInEllipsoid(vec3 position, mat4 ypx, mat4 ypy, mat4 ypz, mat3 rect, int yp_max_index) {
    bool isIn = false;
    float px = position.x;
    float py = position.y;
    float pz = position.z;

    if (px >= rect[0][0] && py >= rect[0][1] && pz >= rect[0][2] && px <= rect[1][0] && py <= rect[1][1] && pz <= rect[1][2]) {
        vec3 lonlat = czm_fromCartesian(position);
        px = lonlat.x;
        py = lonlat.y;

        for (int i = 0; i <= 15; i++) {
            vec3 currVal = czm_getMaxIndexVal(ypx, ypy, ypz, i);
            mat3 xyzxyz = czm_getIndexMat(i, ypx, ypy, ypz, yp_max_index);
            vec3 pos1 = vec3(xyzxyz[0][0], xyzxyz[0][1], xyzxyz[0][2]);
            vec3 pos2 = vec3(xyzxyz[1][0], xyzxyz[1][1], xyzxyz[1][2]);
            vec3 llh1 = czm_fromCartesian(pos1);
            vec3 llh2 = czm_fromCartesian(pos2);
            float sx = llh1.x;
            float sy = llh1.y;
            float tx = llh2.x;
            float ty = llh2.y;

            if (sx != 0.0 && sy != 0.0 && tx != 0.0 && ty != 0.0) {
                if ((sx == px && sy == py) || (tx == px && ty == py)) {
                    return true;
                }
                if ((sy < py && ty >= py) || (sy >= py && ty < py)) {
                    float x = sx + (py - sy) * (tx - sx) / (ty - sy);
                    if (x == px) {
                        return true;
                    }
                    if (x > px) {
                        isIn = !isIn;
                    }
                }
            }
        }
    }
    return isIn;
}
