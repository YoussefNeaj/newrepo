
#
# This LookML file was generated by AtScale on 2022-05-19T02:45:58.023435Z
#
# AtScale engine version: 2022.1.0.11444
# AtScale DesignCenter version: 2022.1.0.19323
# AtScale version: 2022.1.0.4529
# Organization: default
# Project: Workshop

connection: "workshop_looker"
label: "Workshop"


include: "/views/Workshop/Workshop.view.lkml"

include: "/views/Workshop/Prespective.view.lkml"


explore: Workshop {
  label: "Workshop"
}

explore: Prespective {
  label: "Prespective"
}

