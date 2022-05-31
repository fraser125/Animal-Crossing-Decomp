lbl_803E25C4:
/* 803E25C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E25C8  7C 08 02 A6 */	mflr r0
/* 803E25CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E25D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E25D4  7C 9F 23 78 */	mr r31, r4
/* 803E25D8  93 C1 00 08 */	stw r30, 8(r1)
/* 803E25DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E25E0  41 82 00 58 */	beq lbl_803E2638
/* 803E25E4  4B FF FF 49 */	bl mPr_GetThisLandMapIdx
/* 803E25E8  2C 03 FF FF */	cmpwi r3, -1
/* 803E25EC  40 82 00 4C */	bne lbl_803E2638
/* 803E25F0  7F C3 F3 78 */	mr r3, r30
/* 803E25F4  7F E4 FB 78 */	mr r4, r31
/* 803E25F8  4B FF FE 31 */	bl mPr_GetMapFreeIdx
/* 803E25FC  2C 03 FF FF */	cmpwi r3, -1
/* 803E2600  41 82 00 10 */	beq lbl_803E2610
/* 803E2604  1C 03 00 0A */	mulli r0, r3, 0xa
/* 803E2608  7F DE 02 14 */	add r30, r30, r0
/* 803E260C  48 00 00 1C */	b lbl_803E2628
lbl_803E2610:
/* 803E2610  7F C3 F3 78 */	mr r3, r30
/* 803E2614  7F E4 FB 78 */	mr r4, r31
/* 803E2618  4B FF FF 45 */	bl mPr_PushMapInfo
/* 803E261C  38 1F FF FF */	addi r0, r31, -1
/* 803E2620  1C 00 00 0A */	mulli r0, r0, 0xa
/* 803E2624  7F DE 02 14 */	add r30, r30, r0
lbl_803E2628:
/* 803E2628  28 1E 00 00 */	cmplwi r30, 0
/* 803E262C  41 82 00 0C */	beq lbl_803E2638
/* 803E2630  7F C3 F3 78 */	mr r3, r30
/* 803E2634  4B FF FD A1 */	bl mPr_SetMapThisLand
lbl_803E2638:
/* 803E2638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E263C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E2640  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E2644  7C 08 03 A6 */	mtlr r0
/* 803E2648  38 21 00 10 */	addi r1, r1, 0x10
/* 803E264C  4E 80 00 20 */	blr 
