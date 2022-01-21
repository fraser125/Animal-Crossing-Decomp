.include "macros.inc"

.section .text

.org 0x800A8608

.global TRK_main
TRK_main:
/* 800A8608 000A5568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A860C 000A556C  7C 08 02 A6 */	mflr r0
/* 800A8610 000A5570  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A8614 000A5574  4B FF 9D 4D */	bl TRKInitializeNub
/* 800A8618 000A5578  3C 80 80 21 */	lis r4, TRK_mainError@ha
/* 800A861C 000A557C  2C 03 00 00 */	cmpwi r3, 0
/* 800A8620 000A5580  90 64 B5 58 */	stw r3, TRK_mainError@l(r4)
/* 800A8624 000A5584  40 82 00 0C */	bne lbl_800A8630
/* 800A8628 000A5588  4B FF 9C ED */	bl TRKNubWelcome
/* 800A862C 000A558C  4B FF 99 C9 */	bl TRKNubMainLoop
lbl_800A8630:
/* 800A8630 000A5590  4B FF 9D 0D */	bl TRKTerminateNub
/* 800A8634 000A5594  3C 80 80 21 */	lis r4, TRK_mainError@ha
/* 800A8638 000A5598  90 64 B5 58 */	stw r3, TRK_mainError@l(r4)
/* 800A863C 000A559C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A8640 000A55A0  7C 08 03 A6 */	mtlr r0
/* 800A8644 000A55A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800A8648 000A55A8  4E 80 00 20 */	blr 
