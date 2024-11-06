import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectCardWidget extends StatefulWidget {
  final String title;
  final String description;
  final String imageUrl;
  final VoidCallback? onWebsiteTap;
  final VoidCallback? onGithubTap;
  final VoidCallback? onOtherTap;

  const ProjectCardWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.onWebsiteTap,
    this.onGithubTap,
    this.onOtherTap,
  }) : super(key: key);

    @override
    _ProjectCardWidgetState createState() => _ProjectCardWidgetState();
  }
  
  class _ProjectCardWidgetState extends State<ProjectCardWidget> {
  bool _isHovered = false;

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white,
      child: Container(
        
        width: MediaQuery.of(context).size.width * 0.22,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0,right: 8.0,left: 8.0),
                child: MouseRegion(
                  onEnter: (_) => _onHover(true),
                  onExit: (_) => _onHover(false),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                      transform: Matrix4.identity()
                        ..translate(
                        _isHovered ? -10.0 : 0.0,
                        _isHovered ? -10.0 : 0.0,
                        )
                        ..scale(_isHovered ? 1.06 : 1.0),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(widget.imageUrl),
                        fit: BoxFit.cover,
                
         
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white.withOpacity(0),Colors.white.withOpacity(0.0),Colors.white.withOpacity(0.5), Colors.white.withOpacity(1)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:8.0,right: 16.0,left: 16.0),
                child: Container(
                    height: MediaQuery.of(context).size.height*0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                         style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.015,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.description,
                        style: TextStyle(
                           
                            fontSize: MediaQuery.of(context).size.width * 0.0106,
                            fontFamily: 'Poppins',
                    
                          color: Colors.black,
                        ),
                        maxLines: 9,
                      ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    if (widget.onWebsiteTap != null)
                      IconButton(
                      icon: Icon(CupertinoIcons.globe),
                      onPressed: widget.onWebsiteTap,
                      tooltip: 'Website',
                      ),
                       if (widget.onWebsiteTap != null)
                       SizedBox(width: 10),
                    if (widget.onGithubTap != null)
                      IconButton(
                      icon: Icon(Icons.code),
                      onPressed: widget.onGithubTap,
                      tooltip: 'GitHub',
                      ),
                      if (widget.onGithubTap != null)
                       SizedBox(width: 10),
                    if (widget.onOtherTap != null)
                      IconButton(
                      icon: Icon(Icons.description),
                      onPressed: widget.onOtherTap,
                      tooltip: 'Other',
                      ),
                    ],
                  ),
                  
                      
                    ],
                  ),
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
