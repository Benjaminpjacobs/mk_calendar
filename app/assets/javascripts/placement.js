$(document).ready(function() {
    $.getJSON('http://localhost:3000/api/v1/events')
        .then(function(data) {
            data.forEach(function(event) {
                const id = event.id
                const startTime = event.start_time
                const length = event.length
                debugger
                const th = `<th rowspan=${length}>Event ${id}</th>`
                if (startTime.substr(2, 3) === '30') {
                    $(th).insertAfter(`#${startTime}`)
                } else {
                    $(`#${startTime}`).append(th)
                }
            });
        })

})