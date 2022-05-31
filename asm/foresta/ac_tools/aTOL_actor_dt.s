lbl_804ABF70:
/* 804ABF70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ABF74  7C 08 02 A6 */	mflr r0
/* 804ABF78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ABF7C  48 00 02 51 */	bl aTOL_free_clip_area
/* 804ABF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ABF84  7C 08 03 A6 */	mtlr r0
/* 804ABF88  38 21 00 10 */	addi r1, r1, 0x10
/* 804ABF8C  4E 80 00 20 */	blr 
