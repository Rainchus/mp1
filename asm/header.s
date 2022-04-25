.section .data

.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80000400       /* Entrypoint address */
.word 0x00001449       /* Revision */
.word 0x2829657E       /* Checksum 1 */
.word 0xA0621877       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "MarioParty          " /* Internal name */
.word 0x00000000       /* Unknown 3 */
.word 0x00000043       /* Cartridge */
.ascii "LB"            /* Cartridge ID */
.ascii "E"             /* Country code */
.byte 0x00             /* Version */
