lbl_8046FC1C:
/* 8046FC1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FC20  7C 08 02 A6 */	mflr r0
/* 8046FC24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FC28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FC2C  7C 7F 1B 78 */	mr r31, r3
/* 8046FC30  93 C1 00 08 */	stw r30, 8(r1)
/* 8046FC34  80 03 01 D8 */	lwz r0, 0x1d8(r3)
/* 8046FC38  2C 00 00 00 */	cmpwi r0, 0
/* 8046FC3C  41 82 00 C4 */	beq lbl_8046FD00
/* 8046FC40  80 04 1D F8 */	lwz r0, 0x1df8(r4)
/* 8046FC44  2C 00 00 00 */	cmpwi r0, 0
/* 8046FC48  40 82 00 B8 */	bne lbl_8046FD00
/* 8046FC4C  38 00 00 00 */	li r0, 0
/* 8046FC50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046FC54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046FC58  90 1F 01 D8 */	stw r0, 0x1d8(r31)
/* 8046FC5C  3C 63 00 02 */	addis r3, r3, 2
/* 8046FC60  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 8046FC64  28 00 00 01 */	cmplwi r0, 1
/* 8046FC68  40 82 00 98 */	bne lbl_8046FD00
/* 8046FC6C  4B FF F0 E5 */	bl func_8046ED50
/* 8046FC70  A8 1F 01 82 */	lha r0, 0x182(r31)
/* 8046FC74  7C 7E 1B 78 */	mr r30, r3
/* 8046FC78  80 9F 01 DC */	lwz r4, 0x1dc(r31)
/* 8046FC7C  7F E3 FB 78 */	mr r3, r31
/* 8046FC80  68 00 00 01 */	xori r0, r0, 1
/* 8046FC84  B0 9F 01 76 */	sth r4, 0x176(r31)
/* 8046FC88  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8046FC8C  B0 1F 01 82 */	sth r0, 0x182(r31)
/* 8046FC90  80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 8046FC94  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 8046FC98  A8 9F 01 76 */	lha r4, 0x176(r31)
/* 8046FC9C  A8 BF 01 82 */	lha r5, 0x182(r31)
/* 8046FCA0  4B FF F2 A5 */	bl aMI_CopyWallTexture
/* 8046FCA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046FCA8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8046FCAC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8046FCB0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8046FCB4  40 82 00 14 */	bne lbl_8046FCC8
/* 8046FCB8  A8 1F 01 76 */	lha r0, 0x176(r31)
/* 8046FCBC  3C 64 00 02 */	addis r3, r4, 2
/* 8046FCC0  98 03 32 01 */	stb r0, 0x3201(r3)
/* 8046FCC4  48 00 00 30 */	b lbl_8046FCF4
lbl_8046FCC8:
/* 8046FCC8  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 8046FCCC  1C 7E 26 B0 */	mulli r3, r30, 0x26b0
/* 8046FCD0  3C 84 00 01 */	addis r4, r4, 1
/* 8046FCD4  A8 BF 01 76 */	lha r5, 0x176(r31)
/* 8046FCD8  1C 00 08 A8 */	mulli r0, r0, 0x8a8
/* 8046FCDC  7C 64 1A 14 */	add r3, r4, r3
/* 8046FCE0  7C 63 02 14 */	add r3, r3, r0
/* 8046FCE4  98 A3 A5 C1 */	stb r5, -0x5a3f(r3)
/* 8046FCE8  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 8046FCEC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8046FCF0  4B F7 7A 21 */	bl mRmTp_SetNowSceneOriginalWallStatus
lbl_8046FCF4:
/* 8046FCF4  4B F4 EF E9 */	bl mMkRm_ReportChangePlayerRoom
/* 8046FCF8  38 60 01 1B */	li r3, 0x11b
/* 8046FCFC  48 1B E0 09 */	bl sAdo_SysTrgStart
lbl_8046FD00:
/* 8046FD00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FD04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FD08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046FD0C  7C 08 03 A6 */	mtlr r0
/* 8046FD10  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FD14  4E 80 00 20 */	blr 
