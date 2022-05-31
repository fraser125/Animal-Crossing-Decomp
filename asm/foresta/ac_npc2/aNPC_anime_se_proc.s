lbl_8053BB60:
/* 8053BB60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053BB64  7C 08 02 A6 */	mflr r0
/* 8053BB68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053BB6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BB70  4B B5 F3 65 */	bl func_8009AED4
/* 8053BB74  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8053BB78  7C 7D 1B 78 */	mr r29, r3
/* 8053BB7C  7C 9E 23 78 */	mr r30, r4
/* 8053BB80  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8053BB84  40 82 00 24 */	bne lbl_8053BBA8
/* 8053BB88  38 BD 08 D0 */	addi r5, r29, 0x8d0
/* 8053BB8C  38 DD 06 DC */	addi r6, r29, 0x6dc
/* 8053BB90  4B FF FE 3D */	bl aNPC_anime_proc_foot
/* 8053BB94  7F A3 EB 78 */	mr r3, r29
/* 8053BB98  7F C4 F3 78 */	mr r4, r30
/* 8053BB9C  38 BD 08 DC */	addi r5, r29, 0x8dc
/* 8053BBA0  38 DD 06 E4 */	addi r6, r29, 0x6e4
/* 8053BBA4  4B FF FE 29 */	bl aNPC_anime_proc_foot
lbl_8053BBA8:
/* 8053BBA8  83 DD 06 EC */	lwz r30, 0x6ec(r29)
/* 8053BBAC  3B FD 06 F0 */	addi r31, r29, 0x6f0
/* 8053BBB0  48 00 00 18 */	b lbl_8053BBC8
lbl_8053BBB4:
/* 8053BBB4  7F A3 EB 78 */	mr r3, r29
/* 8053BBB8  7F E4 FB 78 */	mr r4, r31
/* 8053BBBC  4B FF FF 59 */	bl aNPC_anime_proc_other
/* 8053BBC0  3B FF 00 0C */	addi r31, r31, 0xc
/* 8053BBC4  3B DE FF FF */	addi r30, r30, -1
lbl_8053BBC8:
/* 8053BBC8  2C 1E 00 00 */	cmpwi r30, 0
/* 8053BBCC  40 82 FF E8 */	bne lbl_8053BBB4
/* 8053BBD0  39 61 00 20 */	addi r11, r1, 0x20
/* 8053BBD4  4B B5 F3 4D */	bl func_8009AF20
/* 8053BBD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053BBDC  7C 08 03 A6 */	mtlr r0
/* 8053BBE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8053BBE4  4E 80 00 20 */	blr 
