int czm_getMaxIndex(mat4 yp_mat_x) {
    if (yp_mat_x[3][3] != 0.0) {
        return 16;
    }
    else if (yp_mat_x[3][2] != 0.0) {
        return 15;
    }
    else if (yp_mat_x[3][1] != 0.0) {
        return 14;
    }
    else if (yp_mat_x[3][0] != 0.0) {
        return 13;
    }
    else if (yp_mat_x[2][3] != 0.0) {
        return 12;
    }
    else if (yp_mat_x[2][2] != 0.0) {
        return 11;
    }
    else if (yp_mat_x[2][1] != 0.0) {
        return 10;
    }
    else if (yp_mat_x[2][0] != 0.0) {
        return 9;
    }
    else if (yp_mat_x[1][3] != 0.0) {
        return 8;
    }
    else if (yp_mat_x[1][2] != 0.0) {
        return 7;
    }
    else if (yp_mat_x[1][1] != 0.0) {
        return 6;
    }
    else if (yp_mat_x[1][0] != 0.0) {
        return 5;
    }
    else if (yp_mat_x[0][3] != 0.0) {
        return 4;
    }
    else if (yp_mat_x[0][2] != 0.0) {
        return 3;
    }
    else if (yp_mat_x[0][1] != 0.0) {
        return 2;
    }
    else if (yp_mat_x[0][0] != 0.0) {
        return 1;
    }
    else {
        return 0;
    }
}
