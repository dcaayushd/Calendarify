// import 'package:flutter/material.dart';
// import '../../../../core/utils/date_utils.dart';
// import '../../../../widgets/blur_container.dart';

// class GlassHeader extends StatelessWidget {
//   const GlassHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final nepaliDate = DateUtilsNepali.getCurrentNepaliDate();

//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: BlurContainer(
//         blur: 15,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               Text(
//                 '${DateUtilsNepali.getNepaliMonthName(nepaliDate['month'])} ${nepaliDate['year']}',
//                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//               ),
//               const SizedBox(height: 6),
//               Text(
//                 'आज: ${nepaliDate['day']} गते',
//                 style: const TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../../../widgets/blur_container.dart';

class GlassHeader extends StatelessWidget {
  const GlassHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlurContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('आजको मिति', style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: 4),
              Text(
                '${today.year}-${today.month}-${today.day}',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '२०७२ बैशाख १',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
