lbl_8042D9B0:
/* 8042D9B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D9B4  7C 08 02 A6 */	mflr r0
/* 8042D9B8  3C 80 80 64 */	lis r4, lit_559@ha /* 0x80644124@ha */
/* 8042D9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D9C0  C0 24 41 24 */	lfs f1, lit_559@l(r4)  /* 0x80644124@l */
/* 8042D9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D9C8  7C 7F 1B 78 */	mr r31, r3
/* 8042D9CC  38 7F 01 7C */	addi r3, r31, 0x17c
/* 8042D9D0  4B F4 2A B9 */	bl cKF_FrameControl_passCheck_now
/* 8042D9D4  2C 03 00 01 */	cmpwi r3, 1
/* 8042D9D8  40 82 00 10 */	bne lbl_8042D9E8
/* 8042D9DC  38 9F 00 28 */	addi r4, r31, 0x28
/* 8042D9E0  38 60 01 47 */	li r3, 0x147
/* 8042D9E4  48 20 05 C5 */	bl sAdo_OngenTrgStart
lbl_8042D9E8:
/* 8042D9E8  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 8042D9EC  2C 00 00 01 */	cmpwi r0, 1
/* 8042D9F0  40 82 00 20 */	bne lbl_8042DA10
/* 8042D9F4  7F E3 FB 78 */	mr r3, r31
/* 8042D9F8  4B FF FB D5 */	bl aMBX_check_flag
/* 8042D9FC  38 00 00 00 */	li r0, 0
/* 8042DA00  7F E3 FB 78 */	mr r3, r31
/* 8042DA04  90 1F 03 1C */	stw r0, 0x31c(r31)
/* 8042DA08  38 80 00 00 */	li r4, 0
/* 8042DA0C  48 00 00 19 */	bl aMBX_setupAction
lbl_8042DA10:
/* 8042DA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042DA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042DA18  7C 08 03 A6 */	mtlr r0
/* 8042DA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042DA20  4E 80 00 20 */	blr 
