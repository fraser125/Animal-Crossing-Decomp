.include "macros.inc"

.section .text

.org 0x800A3468

.global usr_put_initialize
usr_put_initialize:
/* 800A3468 000A03C8  4E 80 00 20 */	blr 

.global usr_puts_serial
usr_puts_serial:
/* 800A346C 000A03CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3470 000A03D0  7C 08 02 A6 */	mflr r0
/* 800A3474 000A03D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A3478 000A03D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A347C 000A03DC  3B E0 00 00 */	li r31, 0
/* 800A3480 000A03E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A3484 000A03E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A3488 000A03E8  7C 7D 1B 78 */	mr r29, r3
/* 800A348C 000A03EC  38 60 00 00 */	li r3, 0
/* 800A3490 000A03F0  48 00 00 30 */	b lbl_800A34C0
lbl_800A3494:
/* 800A3494 000A03F4  48 00 29 4D */	bl GetTRKConnected
/* 800A3498 000A03F8  9B C1 00 08 */	stb r30, 8(r1)
/* 800A349C 000A03FC  7C 7E 1B 78 */	mr r30, r3
/* 800A34A0 000A0400  38 60 00 00 */	li r3, 0
/* 800A34A4 000A0404  9B E1 00 09 */	stb r31, 9(r1)
/* 800A34A8 000A0408  48 00 29 2D */	bl SetTRKConnected
/* 800A34AC 000A040C  38 61 00 08 */	addi r3, r1, 8
/* 800A34B0 000A0410  4B FB 72 A1 */	bl OSReport
/* 800A34B4 000A0414  7F C3 F3 78 */	mr r3, r30
/* 800A34B8 000A0418  48 00 29 1D */	bl SetTRKConnected
/* 800A34BC 000A041C  38 60 00 00 */	li r3, 0
lbl_800A34C0:
/* 800A34C0 000A0420  2C 03 00 00 */	cmpwi r3, 0
/* 800A34C4 000A0424  40 82 00 14 */	bne lbl_800A34D8
/* 800A34C8 000A0428  88 1D 00 00 */	lbz r0, 0(r29)
/* 800A34CC 000A042C  3B BD 00 01 */	addi r29, r29, 1
/* 800A34D0 000A0430  7C 1E 07 75 */	extsb. r30, r0
/* 800A34D4 000A0434  40 82 FF C0 */	bne lbl_800A3494
lbl_800A34D8:
/* 800A34D8 000A0438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A34DC 000A043C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A34E0 000A0440  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A34E4 000A0444  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A34E8 000A0448  7C 08 03 A6 */	mtlr r0
/* 800A34EC 000A044C  38 21 00 20 */	addi r1, r1, 0x20
/* 800A34F0 000A0450  4E 80 00 20 */	blr 
