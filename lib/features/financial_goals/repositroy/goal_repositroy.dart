import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:masrofy/features/financial_goals/models/goal_models.dart';

class GoalRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  GoalRepository({
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
  }) : _firestore = firestore,
       _auth = auth;

  CollectionReference<Map<String, dynamic>> get _goalCollection {
    final uid = _auth.currentUser!.uid;
    return _firestore.collection("users").doc(uid).collection("goals");
  }

  //add goal
  Future<void> addGoals(GoalModels goal) async {
    await _goalCollection.add(goal.toJson());
  }

  Future<void> updatedGoals(GoalModels goal) async {
    await _goalCollection.doc(goal.id).update(goal.toJson());
  }

  Future<void> deleteGoals(GoalModels goal) async {
    await _goalCollection.doc(goal.id).delete();
  }

  Future<List<GoalModels>> getGoals() async {
    final snapshot = await _goalCollection.get();
    return snapshot.docs
        .map((doc) => GoalModels.fromJson(doc.id, doc.data()))
        .toList();
  }
}
