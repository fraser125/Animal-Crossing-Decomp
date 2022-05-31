lbl_803E2300:
/* 803E2300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2304  7C 08 02 A6 */	mflr r0
/* 803E2308  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E230C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E2310  3B E0 00 00 */	li r31, 0
/* 803E2314  48 00 CF 69 */	bl mSM_CHECK_ALL_INSECT_GET
/* 803E2318  2C 03 00 00 */	cmpwi r3, 0
/* 803E231C  41 82 00 24 */	beq lbl_803E2340
/* 803E2320  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E2324  38 80 00 01 */	li r4, 1
/* 803E2328  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E232C  3C 63 00 02 */	addis r3, r3, 2
/* 803E2330  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E2334  88 63 11 02 */	lbz r3, 0x1102(r3)
/* 803E2338  4B FF FF 41 */	bl mPr_GetTalkPermission
/* 803E233C  7C 7F 1B 78 */	mr r31, r3
lbl_803E2340:
/* 803E2340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2344  7F E3 FB 78 */	mr r3, r31
/* 803E2348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E234C  7C 08 03 A6 */	mtlr r0
/* 803E2350  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2354  4E 80 00 20 */	blr 
