lbl_8042A780:
/* 8042A780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A784  7C 08 02 A6 */	mflr r0
/* 8042A788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A78C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042A790  3B E3 01 8C */	addi r31, r3, 0x18c
/* 8042A794  80 A4 20 90 */	lwz r5, 0x2090(r4)
/* 8042A798  38 80 00 78 */	li r4, 0x78
/* 8042A79C  7C 05 23 96 */	divwu r0, r5, r4
/* 8042A7A0  7C 00 21 D6 */	mullw r0, r0, r4
/* 8042A7A4  7C 00 28 50 */	subf r0, r0, r5
/* 8042A7A8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8042A7AC  41 82 00 5C */	beq lbl_8042A808
/* 8042A7B0  40 80 00 10 */	bge lbl_8042A7C0
/* 8042A7B4  2C 00 00 00 */	cmpwi r0, 0
/* 8042A7B8  41 82 00 14 */	beq lbl_8042A7CC
/* 8042A7BC  48 00 00 68 */	b lbl_8042A824
lbl_8042A7C0:
/* 8042A7C0  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8042A7C4  41 82 00 54 */	beq lbl_8042A818
/* 8042A7C8  48 00 00 5C */	b lbl_8042A824
lbl_8042A7CC:
/* 8042A7CC  A8 03 01 78 */	lha r0, 0x178(r3)
/* 8042A7D0  3C 60 80 68 */	lis r3, data_80683F78@ha /* 0x80683F78@ha */
/* 8042A7D4  38 83 3F 78 */	addi r4, r3, data_80683F78@l /* 0x80683F78@l */
/* 8042A7D8  7F E3 FB 78 */	mr r3, r31
/* 8042A7DC  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8042A7E0  38 A0 00 00 */	li r5, 0
/* 8042A7E4  7C 84 02 14 */	add r4, r4, r0
/* 8042A7E8  80 84 00 04 */	lwz r4, 4(r4)
/* 8042A7EC  4B F4 63 F9 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8042A7F0  7F E3 FB 78 */	mr r3, r31
/* 8042A7F4  4B F4 68 21 */	bl cKF_SkeletonInfo_R_play
/* 8042A7F8  3C 60 80 64 */	lis r3, data_80644024@ha /* 0x80644024@ha */
/* 8042A7FC  C0 03 40 24 */	lfs f0, data_80644024@l(r3)  /* 0x80644024@l */
/* 8042A800  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042A804  48 00 00 20 */	b lbl_8042A824
lbl_8042A808:
/* 8042A808  38 83 01 7C */	addi r4, r3, 0x17c
/* 8042A80C  38 60 01 2D */	li r3, 0x12d
/* 8042A810  48 20 37 99 */	bl sAdo_OngenTrgStart
/* 8042A814  48 00 00 10 */	b lbl_8042A824
lbl_8042A818:
/* 8042A818  38 83 01 7C */	addi r4, r3, 0x17c
/* 8042A81C  38 60 01 2D */	li r3, 0x12d
/* 8042A820  48 20 37 89 */	bl sAdo_OngenTrgStart
lbl_8042A824:
/* 8042A824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042A82C  7C 08 03 A6 */	mtlr r0
/* 8042A830  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A834  4E 80 00 20 */	blr 
