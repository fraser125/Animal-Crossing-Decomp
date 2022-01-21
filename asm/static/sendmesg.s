.include "macros.inc"

.section .text

.org 0x8006013C

.global osSendMesg
osSendMesg:
/* 8006013C 0005D09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80060140 0005D0A0  7C 08 02 A6 */	mflr r0
/* 80060144 0005D0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80060148 0005D0A8  48 01 BB 39 */	bl OSSendMessage
/* 8006014C 0005D0AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80060150 0005D0B0  7C 08 03 A6 */	mtlr r0
/* 80060154 0005D0B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80060158 0005D0B8  4E 80 00 20 */	blr 
