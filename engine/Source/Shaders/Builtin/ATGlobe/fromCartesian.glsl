vec3 czm_fromCartesian(vec3 position) {
    vec3 wgs84OneOverRadii = vec3(0.0000001567855942887398, 0.0000001567855942887398, 0.0000001573130351105623);
    vec3 wgs84OneOverRadiiSquared = vec3(0.00000000000002458172257647332, 0.00000000000002458172257647332, 0.000000000000024747391015697002);
    float centerToleranceSquared = 0.1;

    vec3 p = czm_scaleToGeodeticSurface(position, wgs84OneOverRadii, wgs84OneOverRadiiSquared);

    vec3 n = czm_multiplyComponents(p,wgs84OneOverRadiiSquared);
    n = normalize(n);

    vec3 h = p - position;

    float longitude = atan(n.y, n.x);
    float latitude = asin(n.z);

    float dotNum = dot(h, position);
    // float height = MathSign(dotNum)*czm_magnitude(h);
    float height = czm_magnitude(h);

    vec3 result;
    result.x = longitude;
    result.y = latitude;
    result.z = height;
    return result;
}