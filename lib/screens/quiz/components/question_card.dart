import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle_riddle_apti_app/controllers/question_controller.dart';
import 'package:puzzle_riddle_apti_app/models/Questions.dart';

import '../../../constants.dart';
import 'option.dart';


class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        image: DecorationImage(
          //  image: AssetImage(menu[widget.index].image),

            image: AssetImage('assets/images/question_background.jpg'),
            fit: BoxFit.cover),
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
                (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
          SizedBox(height: 10),
          InkWell(
             //  onPressed: _controller.nextQuestion,
             onTap: () {
               onPressed: _controller.nextQuestion;
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => _controller.nextQuestion));
              },
            child: Container(
              // height: 50.0,
              width: 150.0,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 20.0),
                        blurRadius: 30.0,
                        color:  Colors.black12
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.0)
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 110.0,
                    padding:
                    EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
                    child: Text(
                      'NEXT' ,
                      style: Theme.of(context).textTheme.button.apply(color: Colors.black),),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22.0),
                            topLeft: Radius.circular(22.0),
                            bottomRight: Radius.circular(200.0)
                        )
                    ),
                  ),
                  Icon(
                    Icons.skip_next,
                    size: 30.0,
                  )
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
