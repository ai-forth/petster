## The Petster Deluxe

The Axlon toy that serves as a future foundation.

![catster](/images/petster-cat.JPG)

### Background

Meet PetSter Deluxe - The electronic pet with a mind of it's own. PetSter Deluxe is the electronic pet with a microprocessor brain - housbroken, trained and waiting for your companionship. Just like a real pet. PetSter Deluxe thinks with a mind of its own - responding to commands, playing games with you and letting you know that it's having fun. You can command me to run around the house by myself, or:

* Clap commands tell me to go left, right, foward, backward, or to meow.
* Stroke me, I'll happily purr.
* Clap - I'll try to find you.
* Take me for a walk with my leash.
* Just a loud sound wakes me up.
* Talk to me. I'll listen, then "talk" back to you.
* I can "see" in front of me and avoid hitting obsticles.

The pet’s firmware architecture used an 8‑bit microcontroller Motorola 68HC11 and an assembly‑language instruction set employed for its behavior routines. These devices run a custom ASM interpreter stored in a 4 KB ROM, with separate tables for sensor input processing and motor actuation, burned onto a 27C32.

### Behavior-in-code

Install the package:

` wget https://debian.pkgs.org/11/debian-main-amd64/binutils-m68hc1x_2.35.1-3_amd64.deb.html`

Disassemble the file:

`m68hc11-objdump -b binary -m m68hc11 -D -a petster.bin > petster.asm`
