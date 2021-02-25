$.ajax({
  url: "/widgets/1.json",
  type: "GET",
  success: function (widgetData) {
    console.log("Here are the fetched json params of the widget");
    console.log(widgetData);
  },
  error: function (errMessage) {
    console.log(errMessage);
  },
});

$.ajax({
  url: "/widgets.json",
  type: "POST",
  data: {
    widget: {
      name: "The Best Widget",
      maker: "The Widget King",
    },
  },

  success: function (widgetData) {
    console.log("Widget created");
    console.log("issued id:" + widgetData.id);
  },

  error: function (errMessage) {
    console.log(errMessage);
  },
});
