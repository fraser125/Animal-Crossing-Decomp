lbl_804C06D0:
/* 804C06D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C06D4  7C 08 02 A6 */	mflr r0
/* 804C06D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C06DC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804C06E0  7C 7F 1B 78 */	mr r31, r3
/* 804C06E4  80 03 00 00 */	lwz r0, 0(r3)
/* 804C06E8  28 00 00 00 */	cmplwi r0, 0
/* 804C06EC  41 82 00 9C */	beq lbl_804C0788
/* 804C06F0  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C06F4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C06F8  40 82 00 84 */	bne lbl_804C077C
/* 804C06FC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 804C0700  38 61 00 14 */	addi r3, r1, 0x14
/* 804C0704  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804C0708  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C070C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C0710  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804C0714  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C0718  4B EE 6D 19 */	bl mFI_GetUnitFG
/* 804C071C  28 03 00 00 */	cmplwi r3, 0
/* 804C0720  41 82 00 34 */	beq lbl_804C0754
/* 804C0724  A0 83 00 00 */	lhz r4, 0(r3)
/* 804C0728  28 04 00 11 */	cmplwi r4, 0x11
/* 804C072C  41 80 00 0C */	blt lbl_804C0738
/* 804C0730  28 04 00 29 */	cmplwi r4, 0x29
/* 804C0734  40 81 00 0C */	ble lbl_804C0740
lbl_804C0738:
/* 804C0738  28 04 00 5D */	cmplwi r4, 0x5d
/* 804C073C  40 82 00 18 */	bne lbl_804C0754
lbl_804C0740:
/* 804C0740  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C0744  38 BF 00 20 */	addi r5, r31, 0x20
/* 804C0748  38 C0 00 01 */	li r6, 1
/* 804C074C  4B FF FD D5 */	bl bIT_common_hole_throw
/* 804C0750  48 00 00 2C */	b lbl_804C077C
lbl_804C0754:
/* 804C0754  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 804C0758  38 81 00 08 */	addi r4, r1, 8
/* 804C075C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 804C0760  38 A0 00 00 */	li r5, 0
/* 804C0764  90 61 00 08 */	stw r3, 8(r1)
/* 804C0768  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C076C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 804C0770  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C0774  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C0778  4B EE 70 B9 */	bl mFI_SetFG_common
lbl_804C077C:
/* 804C077C  38 00 00 00 */	li r0, 0
/* 804C0780  90 1F 00 00 */	stw r0, 0(r31)
/* 804C0784  90 1F 00 04 */	stw r0, 4(r31)
lbl_804C0788:
/* 804C0788  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C078C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804C0790  7C 08 03 A6 */	mtlr r0
/* 804C0794  38 21 00 30 */	addi r1, r1, 0x30
/* 804C0798  4E 80 00 20 */	blr 
