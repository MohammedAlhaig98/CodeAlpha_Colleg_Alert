import 'package:college_project_test/core/constants.dart';
import 'package:college_project_test/core/size_constants.dart';
import 'package:college_project_test/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../core/Nav_Bars/second_top_nav_bar.dart';
import '../../../../core/utils/events.dart';
class AddEventCalendar extends StatefulWidget {
  const AddEventCalendar({super.key});

  @override
  State<AddEventCalendar> createState() => _AddEventCalendarState();
}

class _AddEventCalendarState extends State<AddEventCalendar> {

  //Variables
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  //2 Variables for store and end date
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  Map<DateTime,List<Events>> events = {};
  final TextEditingController _eventController = TextEditingController();
  late final ValueNotifier<List<Events>> _selectedEvent;

  //Methods
  @override
  void initState(){
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvent = ValueNotifier(_getEventForDay(_selectedDay!));
  }
  @override
  void dispose(){
    super.dispose();
  }
  void _onDaySelected(DateTime selectedDay,DateTime focusedDay){
    if(!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _selectedEvent.value = _getEventForDay(selectedDay);
      });
    }
  }
  List<Events>_getEventForDay(DateTime day){
    //retrieve all event from the selected day
    return events[day]?? [];
  }
  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay){
    setState(() {
      _selectedDay=null;
      _focusedDay=focusedDay;
      _rangeStart=start;
      _rangeEnd=end;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: theme_color,
          onPressed: (){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    scrollable: true,
                    title: const Text("Event Name"),
                    content: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        controller: _eventController,
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme_color,
                            foregroundColor: Colors.white
                          ),
                          onPressed: (){
                            //Store the event name into the map
                            events.addAll({
                              _selectedDay!: [Events(_eventController.text)]
                            });
                            Navigator.of(context).pop();
                            _selectedEvent.value=_getEventForDay(_selectedDay!);
                          },
                          child: const Text("Add")
                      )
                    ],
                  );
                }
            );
          },
          child: const Icon(Icons.add,color: Colors.white,),
        ),
        body: Column(
          children: [
            const SecondTopNavBar(
              pageTitle: 'Add Events', // Name give of page title
            ),
            const VerticalSpace(value: 3),
            SingleChildScrollView(
              child: Container(
                decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
              side: BorderSide(width: 1,color: theme_color),
                ),
              ),
                width: SizeConfig.defaultSize! *19.5,
                child: TableCalendar(
                  headerVisible: true,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day)=>isSameDay(_selectedDay, day),
                  calendarFormat: _calendarFormat,
                  eventLoader: _getEventForDay,
                  startingDayOfWeek: StartingDayOfWeek.saturday,
                  onDaySelected: _onDaySelected,
                  rangeSelectionMode: RangeSelectionMode.toggledOn,
                  rangeStartDay: _rangeStart,
                  onRangeSelected:_onRangeSelected ,
                  rangeEndDay: _rangeEnd,
                  calendarStyle: const CalendarStyle(
                      outsideDaysVisible: false
                  ),
                  onFormatChanged: (format){
                    if(_calendarFormat != format){
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  onPageChanged: (focusdDay){
                    _focusedDay = focusdDay;
                  },
                  locale: "en-us",
                  rowHeight: 40,
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      color: theme_color,
                    ),
                    weekendStyle: TextStyle(
                      color: Colors.blueAccent
                    )
                  ),
                  availableGestures: AvailableGestures.all,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(
                      color: theme_color,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0,),
            Expanded(
              child: ValueListenableBuilder<List<Events>>(
                  valueListenable: _selectedEvent,
                  builder: (context,value,_){
                    return ListView.builder(
                        itemCount: value.length,
                        itemBuilder:(context,index){
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                            decoration: BoxDecoration(
                              border: Border.all(),
                              color: theme_color,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              onTap: ()=> print(""),
                              title: Text('${value[index]}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          );
                        }
                      );
                  }
              ),
            )
          ],
        )
    );
  }
}
