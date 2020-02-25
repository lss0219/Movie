var myData = {
    date: new Date()
};
var padDate = function(value) {
    return value < 10 ? '0' + value:value;
};
var app = new Vue ({
    el: '#app',
    data: myData,
    filters: {
        formatTime: function(value) {
            var date = new Date(value);
            var hours = padDate(date.getHours());
            var minutes = padDate(date.getMinutes());
            var seconds = padDate(date.getSeconds());
            return hours + ':' + minutes + ':' + seconds;
        },
        formatDate: function(value) {
            var date = new Date(value);
            var year = date.getFullYear();
            var month = padDate(date.getMonth()+1);
            var day = padDate(date.getDate());
            var a = new Array("日", "一", "二", "三", "四", "五", "六");
            var dayofweek = date.getDay();
            return year + '/' + month + '/' + day + ' ' + "星期" + a[dayofweek];
        }
    },
    created:function() {
    },
    mounted:function() {
        var _this = this;
        this.timer = setInterval(function() {
            _this.date = new Date();
        },1000)
    },
    beforeDestroy:function() {
        if(this.timer) {
            clearInterval(this.timer);
        }
    }
})