bool czm_isInObliq(vec3 position, mat4 ypx, mat4 ypy, mat4 ypz, mat3 rect, int yp_max_index) {
    bool isIn = false;
    float px = position.x;
    float py = position.y;

    if (px >= rect[0][0] && py >= rect[0][1] && px <= rect[1][0] && py <= rect[1][1]) {
        for (int i = 0; i <= 15; i++) { // 修改此处循环次数
            vec3 currVal = czm_getMaxIndexVal(ypx, ypy, ypz, i);
            if (currVal.x != 0.0 && currVal.y != 0.0) {
                mat3 xyxy = czm_getIndexMat(i, ypx, ypy, ypz, yp_max_index);
                float sx = xyxy[0][0];
                float sy = xyxy[0][1];
                float tx = xyxy[1][0];
                float ty = xyxy[1][1];

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
    }
    return isIn;
}
