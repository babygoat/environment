#!/bin/sh
PORT=${PORT:-27017}

mongo --port $PORT --eval "db.student.insert([{_id: 1, name: 'Ted', enrolls: [1, 2], clubs: [1]},{_id: 2, name: 'Marshall', enrolls:[], clubs: [2]}]);"
mongo --port $PORT --eval "db.class.insert([{_id: 1, name: 'Math', instructor: 'Mary'}, {_id: 2, name: 'Chemistry', teacher: 'Lena'}])"
mongo --port $PORT --eval "db.club.insert([{_id: 1, name:'soccer'}, {_id: 2, name: 'basketball'}])"
mongo --port $PORT --eval "db.activity.insert([{_id: 1, name:'soccer', count: 150}, {_id: 2, name:'basketball', count: 100}])"
