$(document).ready(function() {
    $.getJSON('http://localhost:3000/api/v1/events')
        .then(function(data) {
            data.forEach(function(event) {
                const id = event.id
                const startTime = event.start_time
                const length = (Number(event.end_time) - Number(startTime)) / 100

                const th = `<th rowspan=${length}>Event ${id}</th>`
                debugger
                $(`#${startTime}`).append(th)
            });
        })

})