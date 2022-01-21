.include "macros.inc"

.section .text

.org 0x800A34F4

.global TRKDispatchMessage
TRKDispatchMessage:
/* 800A34F4 000A0454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A34F8 000A0458  7C 08 02 A6 */	mflr r0
/* 800A34FC 000A045C  38 80 00 00 */	li r4, 0
/* 800A3500 000A0460  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A3504 000A0464  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A3508 000A0468  3B E0 05 00 */	li r31, 0x500
/* 800A350C 000A046C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A3510 000A0470  7C 7E 1B 78 */	mr r30, r3
/* 800A3514 000A0474  4B FF F9 4D */	bl TRKSetBufferPosition
/* 800A3518 000A0478  7F C3 F3 78 */	mr r3, r30
/* 800A351C 000A047C  38 81 00 08 */	addi r4, r1, 8
/* 800A3520 000A0480  4B FF F5 41 */	bl TRKReadBuffer1_ui8
/* 800A3524 000A0484  3C 60 80 21 */	lis r3, gTRKDispatchTableSize@ha
/* 800A3528 000A0488  88 81 00 08 */	lbz r4, 8(r1)
/* 800A352C 000A048C  80 03 AF C0 */	lwz r0, gTRKDispatchTableSize@l(r3)
/* 800A3530 000A0490  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800A3534 000A0494  7C 03 00 40 */	cmplw r3, r0
/* 800A3538 000A0498  40 80 00 24 */	bge lbl_800A355C
/* 800A353C 000A049C  3C 60 80 0E */	lis r3, gTRKDispatchTable@ha
/* 800A3540 000A04A0  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 800A3544 000A04A4  38 83 21 28 */	addi r4, r3, gTRKDispatchTable@l
/* 800A3548 000A04A8  7F C3 F3 78 */	mr r3, r30
/* 800A354C 000A04AC  7D 84 00 2E */	lwzx r12, r4, r0
/* 800A3550 000A04B0  7D 89 03 A6 */	mtctr r12
/* 800A3554 000A04B4  4E 80 04 21 */	bctrl 
/* 800A3558 000A04B8  7C 7F 1B 78 */	mr r31, r3
lbl_800A355C:
/* 800A355C 000A04BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3560 000A04C0  7F E3 FB 78 */	mr r3, r31
/* 800A3564 000A04C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A3568 000A04C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A356C 000A04CC  7C 08 03 A6 */	mtlr r0
/* 800A3570 000A04D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800A3574 000A04D4  4E 80 00 20 */	blr 

.global TRKInitializeDispatcher
TRKInitializeDispatcher:
/* 800A3578 000A04D8  3C 60 80 21 */	lis r3, gTRKDispatchTableSize@ha
/* 800A357C 000A04DC  38 00 00 20 */	li r0, 0x20
/* 800A3580 000A04E0  38 83 AF C0 */	addi r4, r3, gTRKDispatchTableSize@l
/* 800A3584 000A04E4  38 60 00 00 */	li r3, 0
/* 800A3588 000A04E8  90 04 00 00 */	stw r0, 0(r4)
/* 800A358C 000A04EC  4E 80 00 20 */	blr 
