const moodle_client = require("moodle-client");

moodle_client.init({
    wwwroot: "https://campus.fi.uba.ar",
    token: "", // TODO
}).then(function(client) {
    // console.log(client)
    // get_info(client);
    // get_courses(client);
    // get_course_forums(client);
    // get_forum_discussions(client);
    get_discusion_posts(client);
}).catch(function(err) {
    console.log("Unable to initialize the client: " + err);
});


function get_info(client) {
    return client.call({
        wsfunction: "core_webservice_get_site_info",

    }).then(function(info) {
        console.log("Hello %s, welcome to %s", info.fullname, info.sitename);
        // console.log(info);
        console.log(info.functions.find(f => f.name === 'mod_forum_get_forum_discussion_posts'));
    });
}

function get_courses(client) {
    return client.call({
        wsfunction: "core_enrol_get_users_courses",
        method: "POST",
        args: {
            userid: 41497,
        }
    }).then(function(info) {
        console.log(info);
    });

}

function get_course_forums(client) {
    return client.call({
        wsfunction: "mod_forum_get_forums_by_courses",
        method: "POST",
        args: {
            courseids: [210],
        }
    }).then(function(info) {
        console.log(info);
    });

}

function get_forum_discussions(client) {
    return client.call({
        wsfunction: "mod_forum_get_forum_discussions_paginated",
        method: "POST",
        args: {
            forumid: 2586,
        }
    }).then(function(info) {
        console.log(info);
    });
}

function get_discusion_posts(client) {
    return client.call({
        wsfunction: "mod_forum_get_forum_discussion_posts",
        method: "POST",
        args: {
            discussionid: 103207,
        }
    }).then(function(info) {
        console.log(info);
    });
}
