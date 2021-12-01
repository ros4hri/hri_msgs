^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package hri_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Forthcoming
-----------
* Added IdsMatch.msg to publish potential matches between face/body/voice ids
  and person ids

0.1.1 (2021-11-09)
------------------
* Added CHANGELOG

0.1.0 (2021-11-09)
------------------
* package.xml format 3 + clean up of unused dependencies
* Removed services which do not make sense in the current ros4hri standard
* IdsList.msg: add a header
  This is critical to be able to reliably match the list of tracked faces/bodies/voices to actually face/body/voice subtopics.
* IdsList and RegionOfInterestStamped were not actualyl built
* Added a stamped version of RegionOfInterest
  This is important to associate the timestamp of the original image to eg a detected face RoI
* add msg for list of face/body/voice/person ids
* FacialLandmarks coordinates are in normalised pixels
  This now matches what PointOfInterest2D stores.
* Github links in README
* Added AudioFeatures.msg, based on INTERSPEECH features
* Update AgeAndGender.msg (capitalisation)
* Delete BodyPose.msg
* Typo fixes
* Update README.md
* Fixed typos in Skeleton2D.msg
* Fixed merge artifacts introduced in 08fdcc5b
* Revert "Update Expression.msg": constants *must* by capitalised
  This reverts commit 79162c9499cb94754b77ff4a58ea1d000c2861bd.
* Update Expression.msg
* Merge branch 'master' of https://git.brl.ac.uk/ROS4HRI/hri_msgs
* msgs edits an cmake additions
* Update list of msg in CMakeLists
* Delete Person.msg
* Update BodyLang.msg
* Cmakelists edits
* Delete settings.json
* Delete Faces.msg
* Delete Face.msg
* Delete ActionUnit.msg
* Update ActionUnits.msg
* Delete BodyStamped.msg
* Delete Body.msg
* Delete FaceROIStamped.msg
* Delete FaceStamped.msg
* Delete Face.msg
* Delete Faces.msg
* Add new file
* Add new file
* Add new file
* Delete Group.msg
* Delete PersonsStamped.msg
* Delete ReidentificationStamped.msg
* Delete Reidentification.msg
* msgs edits
* edits
* Update PersonsStamped.msg
* Update Person.msg
* Add new file
* Add new file
* Delete HeadPoseStamped.msg
* Delete HeadPose.msg
* Update GazeSenderReceiver.msg
* Delete FacesLandmarks.msg
* Update Faces.msg
* Update AgeGender.msg
* Add new file
* Delete FacesActionUnits.msg
* Update FacialLandmarksStamped.msg
* Delete AgeGenderStamped.msg
* Delete EmotionsStamped.msg
* Update Emotion.msg
* Update Emotion.msg
* Created a Face.msg describing the face model
* emotions, headpose, age and gender msgs added.
* social_net msgs file added to be refractored
* skeleton_msgs edit
* skeleton edits
* skeleton points added
* Fixed travis.yml for ROS1
* Fixed messages names
* Slightly simply travis.yml
* WIP travis
* travis WIP
* travis WIP
* travis WIP
* travis WIP
* travis WIP
* Added travis badge to readme
* First attempt at travis integration
* Added Person.location_known_confidence with doc
* Clarify the semantics of UpdateHuman.srv
* Reworked the face + face landmarks msgs
* Added services to communicate with the humans_server database
* Added Group.msg
* Added msg associating faces to their AUs + updated CMakeLists
* Added a message for action units
* Added Person.msg
* Update link to wiki
* {PixelCoordinate->PointOfInterest2D} + added a confidence level
* gitlab doesn't like backticks in links
* Added a FacialLandmarks msg
* Making sure the package compiles successfully
* Added README
* first commit
* Contributors: Séverin Lemaignan, Youssef Mohamed, yef2-mohamed