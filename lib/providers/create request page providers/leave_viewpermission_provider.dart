import 'package:cobe_task/leave_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final viewPermissionProvider =
    StateProvider.autoDispose<ViewPermission>((_) => ViewPermission.everyone);
