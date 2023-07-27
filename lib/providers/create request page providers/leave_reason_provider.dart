import 'package:flutter_riverpod/flutter_riverpod.dart';

final leaveReasonProvider = StateProvider.autoDispose<String>((_) => '');
