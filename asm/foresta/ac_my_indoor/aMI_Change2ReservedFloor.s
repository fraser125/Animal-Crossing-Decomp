lbl_8046FD18:
/* 8046FD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FD1C  7C 08 02 A6 */	mflr r0
/* 8046FD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FD28  7C 7F 1B 78 */	mr r31, r3
/* 8046FD2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8046FD30  80 03 01 E4 */	lwz r0, 0x1e4(r3)
/* 8046FD34  2C 00 00 00 */	cmpwi r0, 0
/* 8046FD38  41 82 00 C8 */	beq lbl_8046FE00
/* 8046FD3C  80 04 1D F8 */	lwz r0, 0x1df8(r4)
/* 8046FD40  2C 00 00 00 */	cmpwi r0, 0
/* 8046FD44  40 82 00 BC */	bne lbl_8046FE00
/* 8046FD48  38 00 00 00 */	li r0, 0
/* 8046FD4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046FD50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046FD54  90 1F 01 E4 */	stw r0, 0x1e4(r31)
/* 8046FD58  3C 63 00 02 */	addis r3, r3, 2
/* 8046FD5C  88 03 60 01 */	lbz r0, 0x6001(r3)
/* 8046FD60  28 00 00 01 */	cmplwi r0, 1
/* 8046FD64  40 82 00 9C */	bne lbl_8046FE00
/* 8046FD68  4B FF EF E9 */	bl func_8046ED50
/* 8046FD6C  A8 1F 01 80 */	lha r0, 0x180(r31)
/* 8046FD70  7C 7E 1B 78 */	mr r30, r3
/* 8046FD74  80 9F 01 E8 */	lwz r4, 0x1e8(r31)
/* 8046FD78  7F E3 FB 78 */	mr r3, r31
/* 8046FD7C  68 00 00 01 */	xori r0, r0, 1
/* 8046FD80  B0 9F 01 74 */	sth r4, 0x174(r31)
/* 8046FD84  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8046FD88  B0 1F 01 80 */	sth r0, 0x180(r31)
/* 8046FD8C  80 1F 01 EC */	lwz r0, 0x1ec(r31)
/* 8046FD90  90 1F 01 78 */	stw r0, 0x178(r31)
/* 8046FD94  A8 9F 01 74 */	lha r4, 0x174(r31)
/* 8046FD98  A8 BF 01 80 */	lha r5, 0x180(r31)
/* 8046FD9C  4B FF F0 A5 */	bl aMI_CopyFloorTexture
/* 8046FDA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046FDA4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8046FDA8  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8046FDAC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8046FDB0  40 82 00 14 */	bne lbl_8046FDC4
/* 8046FDB4  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 8046FDB8  3C 64 00 02 */	addis r3, r4, 2
/* 8046FDBC  98 03 32 00 */	stb r0, 0x3200(r3)
/* 8046FDC0  48 00 00 2C */	b lbl_8046FDEC
lbl_8046FDC4:
/* 8046FDC4  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 8046FDC8  1C 7E 26 B0 */	mulli r3, r30, 0x26b0
/* 8046FDCC  3C 84 00 01 */	addis r4, r4, 1
/* 8046FDD0  A8 BF 01 74 */	lha r5, 0x174(r31)
/* 8046FDD4  1C 00 08 A8 */	mulli r0, r0, 0x8a8
/* 8046FDD8  7C 64 1A 14 */	add r3, r4, r3
/* 8046FDDC  7C 63 02 14 */	add r3, r3, r0
/* 8046FDE0  98 A3 A5 C0 */	stb r5, -0x5a40(r3)
/* 8046FDE4  80 7F 01 78 */	lwz r3, 0x178(r31)
/* 8046FDE8  4B F7 79 69 */	bl mRmTp_SetNowSceneOriginalFloorStatus
lbl_8046FDEC:
/* 8046FDEC  A8 7F 01 74 */	lha r3, 0x174(r31)
/* 8046FDF0  4B FF F2 55 */	bl aNI_SetFloorSE
/* 8046FDF4  38 60 01 1B */	li r3, 0x11b
/* 8046FDF8  48 1B DF 0D */	bl sAdo_SysTrgStart
/* 8046FDFC  4B F4 EE E1 */	bl mMkRm_ReportChangePlayerRoom
lbl_8046FE00:
/* 8046FE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FE04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FE08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046FE0C  7C 08 03 A6 */	mtlr r0
/* 8046FE10  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FE14  4E 80 00 20 */	blr 
