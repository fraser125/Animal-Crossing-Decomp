lbl_804D73A4:
/* 804D73A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D73A8  7C 08 02 A6 */	mflr r0
/* 804D73AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D73B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D73B4  7C BF 2B 78 */	mr r31, r5
/* 804D73B8  4B FF FF A9 */	bl Player_actor_putin
/* 804D73BC  28 1F 00 00 */	cmplwi r31, 0
/* 804D73C0  41 82 00 2C */	beq lbl_804D73EC
/* 804D73C4  80 DF 00 00 */	lwz r6, 0(r31)
/* 804D73C8  38 81 00 08 */	addi r4, r1, 8
/* 804D73CC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804D73D0  38 60 00 00 */	li r3, 0
/* 804D73D4  38 A0 00 01 */	li r5, 1
/* 804D73D8  90 C1 00 08 */	stw r6, 8(r1)
/* 804D73DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D73E0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804D73E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D73E8  4B ED 04 49 */	bl mFI_SetFG_common
lbl_804D73EC:
/* 804D73EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D73F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D73F4  7C 08 03 A6 */	mtlr r0
/* 804D73F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804D73FC  4E 80 00 20 */	blr 
