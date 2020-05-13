#! /bin/bash
 systemctl daemon-reload

 systemctl stop talker.{path,service}
 systemctl enable talker.{path,service}
 systemctl start talker.{service,path}
 systemctl status  talker.{service,path}

