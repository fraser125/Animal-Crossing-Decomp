lbl_804C7620:
/* 804C7620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C7624  7C 08 02 A6 */	mflr r0
/* 804C7628  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C762C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C7630  7C 7F 1B 78 */	mr r31, r3
/* 804C7634  80 03 00 00 */	lwz r0, 0(r3)
/* 804C7638  28 00 00 00 */	cmplwi r0, 0
/* 804C763C  41 82 00 3C */	beq lbl_804C7678
/* 804C7640  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 804C7644  38 81 00 08 */	addi r4, r1, 8
/* 804C7648  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 804C764C  38 A0 00 01 */	li r5, 1
/* 804C7650  90 61 00 08 */	stw r3, 8(r1)
/* 804C7654  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C7658  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 804C765C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C7660  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C7664  4B EE 01 CD */	bl mFI_SetFG_common
/* 804C7668  38 00 00 00 */	li r0, 0
/* 804C766C  90 1F 00 00 */	stw r0, 0(r31)
/* 804C7670  90 1F 00 04 */	stw r0, 4(r31)
/* 804C7674  90 1F 00 08 */	stw r0, 8(r31)
lbl_804C7678:
/* 804C7678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C767C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C7680  7C 08 03 A6 */	mtlr r0
/* 804C7684  38 21 00 20 */	addi r1, r1, 0x20
/* 804C7688  4E 80 00 20 */	blr 
