#!/usr/bin/env node

const child_process = require('child_process');
const fs = require('fs');

const UPDATE_TIME = 1500;
const COLORS_FILE = "/home/edu/.cache/wal/colors.json";

if(!fs.existsSync(COLORS_FILE)) {
    process.exit(-1);
}

const COLORS = JSON.parse(fs.readFileSync(COLORS_FILE, "utf8"));
const LEMONBAR_ARGS = ["-g", "x25", "-f", "FuraCode Nerd Font:size=10", "-B", COLORS.special.background,
                        "-F", COLORS.special.foreground];

const lemonbar = child_process.spawn("lemonbar", LEMONBAR_ARGS);

const isRunning = (proc) => {
    return new Promise((resolve) => {
        const pidof = child_process.spawn('pidof', [proc]); 
        pidof.on('close', (code) => {
            resolve(code == 0);
        });
    });
}

const getTime = () => {
    const d = new Date();
    const hour = d.getHours().toString().padStart(2, "0");
    const minutes = d.getMinutes().toString().padStart(2, "0");
    const day = d.getDate().toString().padStart(2, "0");
    const month = (d.getMonth() + 1).toString().padStart(2, "0");
    return {
        time: `${hour}:${minutes}`,
        date: `${day}/${month}`
    };
}

const getSong = () => {
    return {
        title: child_process.spawnSync("playerctl", ["metadata", "title"]).stdout.toString(),
        album: child_process.spawnSync("playerctl", ["metadata", "album"]).stdout.toString(),
        artist: child_process.spawnSync("playerctl", ["metadata", "artist"]).stdout.toString(),
    }
}

const getWorkspaces = () => {
    return JSON.parse(child_process.spawnSync("i3-msg", ["-t", "get_workspaces"]).stdout.toString());
}

const build = (text, align, fg, bg) => {
    let ret = "";
    if(align) {
        ret += `%{${align}}`;
    }

    if(bg) {
        ret += `%{B${bg}}`;
    }

    if(fg) {
        ret += `%{F${fg}}`;
    }

    return ret + text;;
}

const update = () => {
    const date = getTime();
    const song = getSong();

    let left = " ";

    getWorkspaces().forEach((w) => {
        left += build(`${w.name} `, undefined, w.visible ? COLORS.special.foreground :
                                                                    COLORS.colors.color5);
    });

    const center = build(song.artist, undefined, COLORS.colors.color5)
                + build(" - ", undefined, COLORS.special.foreground)
                + build(song.title, undefined, COLORS.colors.color5);
    const right = build(date.date + " " + date.time, undefined, COLORS.colors.color5) + " ";

    lemonbar.stdin.write(build(left, "l") + build(center, "c") + build(right, "r"));

    setTimeout(update, UPDATE_TIME);
}

update();
