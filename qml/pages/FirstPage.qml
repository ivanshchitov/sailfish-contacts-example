import QtQuick 2.0
import Sailfish.Silica 1.0
import org.nemomobile.contacts 1.0

Page {
    PeopleModel {
        id: peopleModel
        filterType: PeopleModel.FilterAll
        requiredProperty: PeopleModel.PhoneNumberRequired
    }
    SilicaListView {
        anchors.fill: parent
        spacing: Theme.paddingSmall
        header: PageHeader {title: "Контакты"}
        model: peopleModel
        delegate: ListItem {
            width: parent.width
            Column {
                width: parent.width
                Label {text: firstName + " " + lastName}
                Label {text: "Номера: " + phoneNumbers.join(", ")}
            }
        }
    }
}
