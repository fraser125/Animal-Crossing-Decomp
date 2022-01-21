.include "macros.inc"

.section .text

.org 0x80060008

.global osDestroyThread
osDestroyThread:
/* 80060008 0005CF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006000C 0005CF6C  7C 08 02 A6 */	mflr r0
/* 80060010 0005CF70  28 03 00 00 */	cmplwi r3, 0
/* 80060014 0005CF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80060018 0005CF78  40 82 00 08 */	bne lbl_80060020
/* 8006001C 0005CF7C  48 01 DC C1 */	bl OSGetCurrentThread
lbl_80060020:
/* 80060020 0005CF80  48 01 E4 A1 */	bl OSCancelThread
/* 80060024 0005CF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80060028 0005CF88  7C 08 03 A6 */	mtlr r0
/* 8006002C 0005CF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80060030 0005CF90  4E 80 00 20 */	blr 
