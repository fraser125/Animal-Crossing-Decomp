lbl_804ABD00:
/* 804ABD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ABD04  7C 08 02 A6 */	mflr r0
/* 804ABD08  38 80 00 08 */	li r4, 8
/* 804ABD0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ABD10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ABD14  A0 A3 00 06 */	lhz r5, 6(r3)
/* 804ABD18  38 60 00 0F */	li r3, 0xf
/* 804ABD1C  3C A5 FF FF */	addis r5, r5, 0xffff
/* 804ABD20  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 804ABD24  54 1F 07 FE */	clrlwi r31, r0, 0x1f
/* 804ABD28  4B EF 20 A5 */	bl mEv_get_save_area
/* 804ABD2C  A0 03 00 02 */	lhz r0, 2(r3)
/* 804ABD30  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804ABD34  40 82 00 0C */	bne lbl_804ABD40
/* 804ABD38  38 60 00 00 */	li r3, 0
/* 804ABD3C  48 00 00 18 */	b lbl_804ABD54
lbl_804ABD40:
/* 804ABD40  7C 63 FA 14 */	add r3, r3, r31
/* 804ABD44  88 63 00 1C */	lbz r3, 0x1c(r3)
/* 804ABD48  30 03 FF FF */	addic r0, r3, -1
/* 804ABD4C  7C 00 01 10 */	subfe r0, r0, r0
/* 804ABD50  7C 63 00 78 */	andc r3, r3, r0
lbl_804ABD54:
/* 804ABD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ABD58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ABD5C  7C 08 03 A6 */	mtlr r0
/* 804ABD60  38 21 00 10 */	addi r1, r1, 0x10
/* 804ABD64  4E 80 00 20 */	blr 
