lbl_8052D878:
/* 8052D878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052D87C  7C 08 02 A6 */	mflr r0
/* 8052D880  38 80 00 00 */	li r4, 0
/* 8052D884  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052D888  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052D88C  7C 7F 1B 78 */	mr r31, r3
/* 8052D890  38 61 00 08 */	addi r3, r1, 8
/* 8052D894  80 BF 00 00 */	lwz r5, 0(r31)
/* 8052D898  80 1F 00 04 */	lwz r0, 4(r31)
/* 8052D89C  90 A1 00 08 */	stw r5, 8(r1)
/* 8052D8A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052D8A4  80 1F 00 08 */	lwz r0, 8(r31)
/* 8052D8A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052D8AC  4B E5 B8 01 */	bl mCoBG_Wpos2Attribute
/* 8052D8B0  48 10 0D A1 */	bl sAdo_Get_KokeruLabel
/* 8052D8B4  7F E4 FB 78 */	mr r4, r31
/* 8052D8B8  48 10 06 F1 */	bl sAdo_OngenTrgStart
/* 8052D8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052D8C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052D8C4  7C 08 03 A6 */	mtlr r0
/* 8052D8C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8052D8CC  4E 80 00 20 */	blr 
