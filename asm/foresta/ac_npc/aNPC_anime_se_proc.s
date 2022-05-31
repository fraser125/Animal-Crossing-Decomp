lbl_8052CF68:
/* 8052CF68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052CF6C  7C 08 02 A6 */	mflr r0
/* 8052CF70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052CF74  39 61 00 20 */	addi r11, r1, 0x20
/* 8052CF78  4B B6 DF 5D */	bl func_8009AED4
/* 8052CF7C  80 03 08 40 */	lwz r0, 0x840(r3)
/* 8052CF80  7C 7D 1B 78 */	mr r29, r3
/* 8052CF84  7C 9E 23 78 */	mr r30, r4
/* 8052CF88  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8052CF8C  40 82 00 24 */	bne lbl_8052CFB0
/* 8052CF90  38 BD 08 D0 */	addi r5, r29, 0x8d0
/* 8052CF94  38 DD 06 DC */	addi r6, r29, 0x6dc
/* 8052CF98  4B FF FE 25 */	bl aNPC_anime_proc_foot
/* 8052CF9C  7F A3 EB 78 */	mr r3, r29
/* 8052CFA0  7F C4 F3 78 */	mr r4, r30
/* 8052CFA4  38 BD 08 DC */	addi r5, r29, 0x8dc
/* 8052CFA8  38 DD 06 E4 */	addi r6, r29, 0x6e4
/* 8052CFAC  4B FF FE 11 */	bl aNPC_anime_proc_foot
lbl_8052CFB0:
/* 8052CFB0  83 DD 06 EC */	lwz r30, 0x6ec(r29)
/* 8052CFB4  3B FD 06 F0 */	addi r31, r29, 0x6f0
/* 8052CFB8  48 00 00 18 */	b lbl_8052CFD0
lbl_8052CFBC:
/* 8052CFBC  7F A3 EB 78 */	mr r3, r29
/* 8052CFC0  7F E4 FB 78 */	mr r4, r31
/* 8052CFC4  4B FF FF 59 */	bl aNPC_anime_proc_other
/* 8052CFC8  3B FF 00 0C */	addi r31, r31, 0xc
/* 8052CFCC  3B DE FF FF */	addi r30, r30, -1
lbl_8052CFD0:
/* 8052CFD0  2C 1E 00 00 */	cmpwi r30, 0
/* 8052CFD4  40 82 FF E8 */	bne lbl_8052CFBC
/* 8052CFD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8052CFDC  4B B6 DF 45 */	bl func_8009AF20
/* 8052CFE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052CFE4  7C 08 03 A6 */	mtlr r0
/* 8052CFE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8052CFEC  4E 80 00 20 */	blr 
