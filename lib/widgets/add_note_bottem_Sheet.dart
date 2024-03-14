import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_la/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app_la/widgets/add_note_form.dart';

class AddNoteBottemShet extends StatelessWidget {
   AddNoteBottemShet({super.key});
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failed ${state.errMessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              //فيني حط ستيتفول ويدجت او عرفا جوا الكيوبيت
              inAsyncCall: state is AddNoteLoading?true:false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
