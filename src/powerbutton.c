// SPDX-License-Identifier: GPL-2.0-only
// Copyright (C) 2024 Bardia Moshiri <fakeshell@bardia.tech>

#include <sys/inotify.h>
#include <linux/input.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <batman/wlrdisplay.h>

#define DEVICE_FILE "/dev/input/event1"

int wlrdisplay_status() {
    int result = wlrdisplay(0, NULL);
    return result != 0;
}

int main() {
        struct input_event ev;

	char buffer[sizeof(struct inotify_event) + 255];
	ssize_t len;

        while (1) {
            if (len > 0) {
                int fd_device = open(DEVICE_FILE, O_RDONLY);
                if (fd_device == -1) {
                    perror("Cannot access input device");
                    exit(EXIT_FAILURE);
                }

                read(fd_device, &ev, sizeof(struct input_event));
                if (ev.type == EV_KEY && ev.value == 1) {
                    switch (ev.code) {
                        case 116:
                            if (wlrdisplay_status() == 1) {
                                system("wlr-randr --output HWCOMPOSER-1 --on --scale 3");
                            }
                            break;
                        default:
                            break;
                    }
                }
                close(fd_device);
            }
        }

	return 0;
}
