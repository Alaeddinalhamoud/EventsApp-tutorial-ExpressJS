const events = [{title:'Event-1', time:"11:20"}, { title:'Event-2', time:"11:30" }];

const addEvent = (event) =>{
    events.push(event);
}


module.exports = {
    events,
    addEvent
};