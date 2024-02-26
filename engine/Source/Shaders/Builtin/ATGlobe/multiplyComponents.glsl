vec3 czm_multiplyComponents(vec3 left, vec3 right) {
    vec3 result;
    result.x = left.x * right.x;
    result.y = left.y * right.y;
    result.z = left.z * right.z;
    return result;
}
