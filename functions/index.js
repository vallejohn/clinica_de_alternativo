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

exports.createUser = functions.region("asia-southeast1")
    .https.onCall(async (data, context) => {
      try {
        const _data = data;

        const idToken = _data.idToken;

        const decodedToken = await admin.auth().verifyIdToken(idToken)
            .catch((error) => {
              throw new Error(error.message);
            });

        const result = await admin.firestore()
            .collection("profile_information")
            .doc(decodedToken.uid).get().catch((error) => {
              throw new Error(error.message);
            });

        if ("employees" in result.data().role.modulesAttached ||
          result.data().role.code == "super_admin") {
          const record = await admin.auth().createUser({
            email: _data.email,
            password: _data.password,
          }).catch((error) => {
            throw new Error(error.message);
          });

          delete _data.email;
          delete _data.password;
          _data.profile.uid = record.uid;

          const profileInfoRef = await admin.firestore()
              .collection("profile_information").doc(record.uid)
              .set(_data.profile)
              .catch((error) => {
                throw new Error(error.message);
              });

          return {
            status: "success",
            message: "New user successfully added",
            uid: profileInfoRef.id,
          };
        } else {
          return {
            status: "error",
            message: "Permission denied",
            code: "permission-denied",
          };
        }
      } catch (err) {
        return {status: "error", message: err.message};
      }
    });

exports.createProfileInformation = functions.auth.user()
    .onCreate(async (user) => {
      if (user.email == "valjohn.teruel@gmail.com") {
        const superAdminData = {
          code: "super_admin",
          id: "super_admin",
          modulesAttached: [],
          name: "Super Admin",
        };

        await admin.firestore().collection("roles")
            .doc("super_admin").set(superAdminData);

        const superAdminDataProfile = {
          code: "super_admin",
          id: "super_admin",
          modulesAttached: {},
          name: "Super Admin",
        };

        await admin.firestore()
            .collection("profile_information").doc(user.uid)
            .set({
              uid: user.uid,
              profileUrl: "",
              name: "Valle John Teruel",
              firstTimePasswordReset: false,
              role: superAdminDataProfile,
            });
      }
    });
