import QtQuick
import qs.Commons
import qs.Ui

BarWidget {
  id: root
  moduleName: "io.github.rizmi.divider"

  property var settings: ({})

  function setting(name, fallback) {
    var value = settings ? settings[name] : undefined
    return value === undefined || value === null ? fallback : value
  }

  function intSetting(name, fallback, min, max) {
    var n = parseInt(String(setting(name, fallback)), 10)
    if (!isFinite(n)) n = fallback
    if (n < min) n = min
    if (n > max) n = max
    return n
  }

  readonly property color dividerColor: bar ? bar.barForeground : Color.foreground
  readonly property string style: String(setting("style", "line"))
  readonly property int sideMargin: intSetting("margin", 4, 0, 30)

  implicitWidth: lineItem.width + (sideMargin * 2)
  implicitHeight: root.barSize

  Item {
    id: lineItem
    anchors.centerIn: parent
    width: root.style === "pipe" ? textPipe.implicitWidth : (root.style === "dot" ? 4 : 1)
    height: root.style === "dot" ? 4 : Style.space(14)

    Rectangle {
      visible: root.style === "line"
      anchors.fill: parent
      color: root.dividerColor
      opacity: 0.25
      radius: 0.5
    }

    Rectangle {
      visible: root.style === "dot"
      anchors.fill: parent
      color: root.dividerColor
      opacity: 0.4
      radius: width / 2
    }

    Text {
      id: textPipe
      visible: root.style === "pipe"
      anchors.centerIn: parent
      text: "│"
      color: root.dividerColor
      opacity: 0.3
      font.family: root.bar ? root.bar.fontFamily : Style.font.family
      font.pixelSize: Style.font.bodySmall
    }
  }
}
