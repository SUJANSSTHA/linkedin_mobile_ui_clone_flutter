import 'package:flutter/material.dart';
import 'package:linkedin_mobile_ui_clone_flutter/theme/style.dart';

PreferredSizeWidget appBarWidget(BuildContext context,
    {VoidCallback? onLeadingTapClickListener, String? title, bool? isJobsTab}) {
  return AppBar(
      backgroundColor: linkedInWhiteFFFFFF,
      elevation: 0,
      leading: GestureDetector(
        onTap: onLeadingTapClickListener,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "assets/rajeshHamal.png",
          ),
        ),
      ),
      title: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: linkedInLightGreyCACCCE.withOpacity(5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "$title",
            border: InputBorder.none,
            prefixIcon: const Icon(
              Icons.search,
            ),
          ),
        ),
      ),
      actions: [
        isJobsTab == false
            ? GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.message_outlined,
                  size: 35,
                  color: linkedInMediumGrey86888A,
                ),
              )
            : const Row(
                children: [
                  Icon(
                    Icons.more_vert,
                    size: 35,
                    color: linkedInMediumGrey86888A,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.message_outlined,
                    size: 35,
                    color: linkedInMediumGrey86888A,
                  )
                ],
              ),
        const SizedBox(
          width: 10.0,
        )
      ]);
}
