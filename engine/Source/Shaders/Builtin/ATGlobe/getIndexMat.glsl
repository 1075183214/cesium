mat3 czm_getIndexMat(int index, mat4 ypx, mat4 ypy, mat4 ypz, int yp_max_index) {
    vec3 val = czm_getMaxIndexVal(ypx, ypy, ypz, yp_max_index - 1);

    if (index == 0) {
        return mat3(ypx[0][0], ypy[0][0], ypz[0][0], val.x, val.y, val.z, 0.0, 0.0, 0.0);
    }
    else if (index == 1) {
        return mat3(ypx[0][1], ypy[0][1], ypz[0][1], ypx[0][0], ypy[0][0], ypz[0][0], 0.0, 0.0, 0.0);
    }
    else if (index == 2) {
        return mat3(ypx[0][2], ypy[0][2], ypz[0][2], ypx[0][1], ypy[0][1], ypz[0][1], 0.0, 0.0, 0.0);
    }
    else if (index == 3) {
        return mat3(ypx[0][3], ypy[0][3], ypz[0][3], ypx[0][2], ypy[0][2], ypz[0][2], 0.0, 0.0, 0.0);
    }
    else if (index == 4) {
        return mat3(ypx[1][0], ypy[1][0], ypz[1][0], ypx[0][3], ypy[0][3], ypz[0][3], 0.0, 0.0, 0.0);
    }
    else if (index == 5) {
        return mat3(ypx[1][1], ypy[1][1], ypz[1][1], ypx[1][0], ypy[1][0], ypz[1][0], 0.0, 0.0, 0.0);
    }
    else if (index == 6) {
        return mat3(ypx[1][2], ypy[1][2], ypz[1][2], ypx[1][1], ypy[1][1], ypz[1][1], 0.0, 0.0, 0.0);
    }
    else if (index == 7) {
        return mat3(ypx[1][3], ypy[1][3], ypz[1][3], ypx[1][2], ypy[1][2], ypz[1][2], 0.0, 0.0, 0.0);
    }
    else if (index == 8) {
        return mat3(ypx[2][0], ypy[2][0], ypz[2][0], ypx[1][3], ypy[1][3], ypz[1][3], 0.0, 0.0, 0.0);
    }
    else if (index == 9) {
        return mat3(ypx[2][1], ypy[2][1], ypz[2][1], ypx[2][0], ypy[2][0], ypz[2][0], 0.0, 0.0, 0.0);
    }
    else if (index == 10) {
        return mat3(ypx[2][2], ypy[2][2], ypz[2][2], ypx[2][1], ypy[2][1], ypz[2][1], 0.0, 0.0, 0.0);
    }
    else if (index == 11) {
        return mat3(ypx[2][3], ypy[2][3], ypz[2][3], ypx[2][2], ypy[2][2], ypz[2][2], 0.0, 0.0, 0.0);
    }
    else if (index == 12) {
        return mat3(ypx[3][0], ypy[3][0], ypz[3][0], ypx[2][3], ypy[2][3], ypz[2][3], 0.0, 0.0, 0.0);
    }
    else if (index == 13) {
        return mat3(ypx[3][1], ypy[3][1], ypz[3][1], ypx[3][0], ypy[3][0], ypz[3][0], 0.0, 0.0, 0.0);
    }
    else if (index == 14) {
        return mat3(ypx[3][2], ypy[3][2], ypz[3][2], ypx[3][1], ypy[3][1], ypz[3][1], 0.0, 0.0, 0.0);
    }
    else if (index == 15) {
        return mat3(ypx[3][3], ypy[3][3], ypz[3][3], ypx[3][2], ypy[3][2], ypz[3][2], 0.0, 0.0, 0.0);
    }
}
