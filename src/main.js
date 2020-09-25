import moodle_client from "moodle-client"
import fs from 'fs'

/**
 * Esta configuración se puede escribir en un archivo .env de la forma:
 * MOODLE_URL=http://localhost
 * MOODLE_TOKEN=un_token
 * MOODLE_USER=un_usuario
 * MOODLE_PASSWORD=una_contraseña
 *
 * Solo es necesario configurar el token o (la contraseña y el
 * usuario). El token tiene prioridad.
 */
const moodleConfig = process.env.MOODLE_TOKEN ? {
    token: process.env.MOODLE_TOKEN
} : {
    username: process.env.MOODLE_USER,
    password: process.env.MOODLE_PASSWORD
}
moodleConfig.wwwroot = process.env.MOODLE_URL

moodle_client.init(moodleConfig).then(async function(client) {
    await get_info(client);
    // get_courses(client);
    // get_course_forums(client);
    // get_forum_discussions(client);
    // get_discusion_posts(client);
}).catch(function(err) {
    console.log("Unable to initialize the client: " + err);
});


function get_info(client) {
    return client.call({
        wsfunction: "core_webservice_get_site_info",

    }).then(function(info) {
        console.log("Hello %s, welcome to %s", info.fullname, info.sitename);
        console.log(info);
        // console.log(info.functions.find(f => f.name === 'mod_forum_get_forum_discussion_posts'));
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
            forumid: 2588,
        }
    }).then(function(info) {
        console.log(info);
        fs.writeFileSync(
            './posts.json',
            JSON.stringify(info),
            function (err) {
                if (err) {
                    console.error('Crap happens');
                }
            }
        );
    });
}

function get_discusion_posts(client) {
    return client.call({
        wsfunction: "mod_forum_get_forum_discussion_posts",
        method: "POST",
        args: {
            discussionid: 72220,
        }
    }).then(function(info) {
        console.log(info);
    });
}
