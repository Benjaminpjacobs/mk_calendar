Event.destroy_all
Event.create!([{start_time: '09:00', end_time: '10:00'}, 
               {start_time: '10:00', end_time: '11:00'},
               {start_time: '10:30', end_time: '15:00'},
               {start_time: '11:00', end_time: '11:00'},
               {start_time: '11:30', end_time: '14:00'},
               {start_time: '13:00', end_time: '14:00'},
               {start_time: '15:00', end_time: '18:00'},])