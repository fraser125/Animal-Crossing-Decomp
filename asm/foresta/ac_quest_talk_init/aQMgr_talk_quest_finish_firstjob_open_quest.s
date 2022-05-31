lbl_8048B9A0:
/* 8048B9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B9A4  7C 08 02 A6 */	mflr r0
/* 8048B9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B9B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8048B9B4  4B F5 81 B5 */	bl mQst_GetFirstJobData
/* 8048B9B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048B9BC  7C 7F 1B 78 */	mr r31, r3
/* 8048B9C0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8048B9C4  3C 63 00 02 */	addis r3, r3, 2
/* 8048B9C8  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8048B9CC  3F C3 20 00 */	addis r30, r3, 0x2000
/* 8048B9D0  3B DE 00 02 */	addi r30, r30, 2
/* 8048B9D4  4B F2 81 35 */	bl mLd_PlayerManKindCheck
/* 8048B9D8  2C 03 00 00 */	cmpwi r3, 0
/* 8048B9DC  40 82 00 6C */	bne lbl_8048BA48
/* 8048B9E0  7F C3 F3 78 */	mr r3, r30
/* 8048B9E4  4B F0 F0 35 */	bl mEv_CheckEvent
/* 8048B9E8  2C 03 00 01 */	cmpwi r3, 1
/* 8048B9EC  40 82 00 5C */	bne lbl_8048BA48
/* 8048B9F0  28 1F 00 00 */	cmplwi r31, 0
/* 8048B9F4  41 82 00 54 */	beq lbl_8048BA48
/* 8048B9F8  88 7F 00 00 */	lbz r3, 0(r31)
/* 8048B9FC  54 60 D7 BE */	rlwinm r0, r3, 0x1a, 0x1e, 0x1f
/* 8048BA00  28 00 00 01 */	cmplwi r0, 1
/* 8048BA04  40 82 00 44 */	bne lbl_8048BA48
/* 8048BA08  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 8048BA0C  28 00 00 0D */	cmplwi r0, 0xd
/* 8048BA10  40 82 00 38 */	bne lbl_8048BA48
/* 8048BA14  88 7F 00 01 */	lbz r3, 1(r31)
/* 8048BA18  54 60 EF 3E */	rlwinm r0, r3, 0x1d, 0x1c, 0x1f
/* 8048BA1C  28 00 00 02 */	cmplwi r0, 2
/* 8048BA20  40 82 00 28 */	bne lbl_8048BA48
/* 8048BA24  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 8048BA28  54 00 E8 06 */	rlwinm r0, r0, 0x1d, 0, 3
/* 8048BA2C  7C 00 EE 70 */	srawi r0, r0, 0x1d
/* 8048BA30  7C 00 07 74 */	extsb r0, r0
/* 8048BA34  2C 00 00 02 */	cmpwi r0, 2
/* 8048BA38  40 82 00 10 */	bne lbl_8048BA48
/* 8048BA3C  38 00 00 00 */	li r0, 0
/* 8048BA40  50 03 1E 78 */	rlwimi r3, r0, 3, 0x19, 0x1c
/* 8048BA44  98 7F 00 01 */	stb r3, 1(r31)
lbl_8048BA48:
/* 8048BA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048BA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048BA50  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048BA54  7C 08 03 A6 */	mtlr r0
/* 8048BA58  38 21 00 10 */	addi r1, r1, 0x10
/* 8048BA5C  4E 80 00 20 */	blr 
