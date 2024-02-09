/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

exports.createUser = functions.https.onCall(async (data, context) => {
  try {
    const _data = data;

    const record = await admin.auth().createUser({
      email: _data.email,
      password: _data.password,
    });

    delete _data.email;
    delete _data.password;
    _data.profile.uid = record.uid;

    const profileInfoRef = await admin.firestore()
        .collection("profile_information").add(_data.profile);

    return {status: "New user successfully added", uid: profileInfoRef.id};
  } catch (err) {
    return {error: err.message};
  }
});
