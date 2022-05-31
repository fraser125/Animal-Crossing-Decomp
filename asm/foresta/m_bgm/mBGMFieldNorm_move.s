lbl_8037A660:
/* 8037A660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A664  7C 08 02 A6 */	mflr r0
/* 8037A668  3C A0 81 13 */	lis r5, data_811351C0@ha /* 0x811351C0@ha */
/* 8037A66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A670  38 05 51 C0 */	addi r0, r5, data_811351C0@l /* 0x811351C0@l */
/* 8037A674  38 A0 0F FF */	li r5, 0xfff
/* 8037A678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A67C  7C 9F 23 78 */	mr r31, r4
/* 8037A680  38 80 00 00 */	li r4, 0
/* 8037A684  93 C1 00 08 */	stw r30, 8(r1)
/* 8037A688  7C 7E 1B 78 */	mr r30, r3
/* 8037A68C  7C 03 03 78 */	mr r3, r0
/* 8037A690  4B FF E3 51 */	bl mBGMClock_over_time_check
/* 8037A694  2C 03 00 00 */	cmpwi r3, 0
/* 8037A698  41 82 00 28 */	beq lbl_8037A6C0
/* 8037A69C  48 02 A5 F5 */	bl mFI_CheckFieldData
/* 8037A6A0  2C 03 00 00 */	cmpwi r3, 0
/* 8037A6A4  41 82 00 1C */	beq lbl_8037A6C0
/* 8037A6A8  48 02 A6 25 */	bl mFI_GetFieldId
/* 8037A6AC  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8037A6B0  40 82 00 10 */	bne lbl_8037A6C0
/* 8037A6B4  38 00 00 01 */	li r0, 1
/* 8037A6B8  98 1E 00 09 */	stb r0, 9(r30)
/* 8037A6BC  98 1E 00 08 */	stb r0, 8(r30)
lbl_8037A6C0:
/* 8037A6C0  88 1E 00 09 */	lbz r0, 9(r30)
/* 8037A6C4  28 00 00 00 */	cmplwi r0, 0
/* 8037A6C8  41 82 00 0C */	beq lbl_8037A6D4
/* 8037A6CC  7F C3 F3 78 */	mr r3, r30
/* 8037A6D0  4B FF FF 4D */	bl mBGMFieldNorm_delete_bgm
lbl_8037A6D4:
/* 8037A6D4  88 1E 00 08 */	lbz r0, 8(r30)
/* 8037A6D8  28 00 00 00 */	cmplwi r0, 0
/* 8037A6DC  41 82 00 10 */	beq lbl_8037A6EC
/* 8037A6E0  7F C3 F3 78 */	mr r3, r30
/* 8037A6E4  7F E4 FB 78 */	mr r4, r31
/* 8037A6E8  4B FF FE F1 */	bl mBGMFieldNorm_make_bgm
lbl_8037A6EC:
/* 8037A6EC  38 00 00 00 */	li r0, 0
/* 8037A6F0  98 1E 00 08 */	stb r0, 8(r30)
/* 8037A6F4  98 1E 00 09 */	stb r0, 9(r30)
/* 8037A6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A6FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037A700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A704  7C 08 03 A6 */	mtlr r0
/* 8037A708  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A70C  4E 80 00 20 */	blr 
