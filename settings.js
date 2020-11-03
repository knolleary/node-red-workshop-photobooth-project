module.exports = {
    uiPort: process.env.PORT || 1880,
    credentialSecret: process.env.NODE_RED_CREDENTIAL_SECRET,
    httpAdminRoot: false,
    ui: { path: "/" }
}
