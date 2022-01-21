.include "macros.inc"

.section .text

.org 0x800A66B0

.global TRKReleaseMutex
TRKReleaseMutex:
/* 800A66B0 000A3610  38 60 00 00 */	li r3, 0
/* 800A66B4 000A3614  4E 80 00 20 */	blr 

.global TRKAcquireMutex
TRKAcquireMutex:
/* 800A66B8 000A3618  38 60 00 00 */	li r3, 0
/* 800A66BC 000A361C  4E 80 00 20 */	blr 

.global TRKInitializeMutex
TRKInitializeMutex:
/* 800A66C0 000A3620  38 60 00 00 */	li r3, 0
/* 800A66C4 000A3624  4E 80 00 20 */	blr 
