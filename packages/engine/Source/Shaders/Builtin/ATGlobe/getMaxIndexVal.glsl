vec3 czm_getMaxIndexVal(mat4 ypx, mat4 ypy, mat4 ypz, int yp_max_index) {
    if (yp_max_index == 0) {
        return vec3(ypx[0][0], ypy[0][0], ypz[0][0]);
    } else if (yp_max_index == 1) {
        return vec3(ypx[0][1], ypy[0][1], ypz[0][1]);
    } else if (yp_max_index == 2) {
        return vec3(ypx[0][2], ypy[0][2], ypz[0][2]);
    } else if (yp_max_index == 3) {
        return vec3(ypx[0][3], ypy[0][3], ypz[0][3]);
    } else if (yp_max_index == 4) {
        return vec3(ypx[1][0], ypy[1][0], ypz[1][0]);
    } else if (yp_max_index == 5) {
        return vec3(ypx[1][1], ypy[1][1], ypz[1][1]);
    } else if (yp_max_index == 6) {
        return vec3(ypx[1][2], ypy[1][2], ypz[1][2]);
    } else if (yp_max_index == 7) {
        return vec3(ypx[1][3], ypy[1][3], ypz[1][3]);
    } else if (yp_max_index == 8) {
        return vec3(ypx[2][0], ypy[2][0], ypz[2][0]);
    } else if (yp_max_index == 9) {
        return vec3(ypx[2][1], ypy[2][1], ypz[2][1]);
    } else if (yp_max_index == 10) {
        return vec3(ypx[2][2], ypy[2][2], ypz[2][2]);
    } else if (yp_max_index == 11) {
        return vec3(ypx[2][3], ypy[2][3], ypz[2][3]);
    } else if (yp_max_index == 12) {
        return vec3(ypx[3][0], ypy[3][0], ypz[3][0]);
    } else if (yp_max_index == 13) {
        return vec3(ypx[3][1], ypy[3][1], ypz[3][1]);
    } else if (yp_max_index == 14) {
        return vec3(ypx[3][2], ypy[3][2], ypz[3][2]);
    } else if (yp_max_index == 15) {
        return vec3(ypx[3][3], ypy[3][3], ypz[3][3]);
    }
    // 返回默认值，也可以根据实际需求修改
    return vec3(0.0);
}
