lbl_803C661C:
/* 803C661C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C6620  7C 08 02 A6 */	mflr r0
/* 803C6624  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C6628  39 61 00 20 */	addi r11, r1, 0x20
/* 803C662C  4B CD 48 A9 */	bl func_8009AED4
/* 803C6630  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 803C6634  7C BE 2B 78 */	mr r30, r5
/* 803C6638  7C 7D 1B 78 */	mr r29, r3
/* 803C663C  3B E0 00 00 */	li r31, 0
/* 803C6640  41 82 00 88 */	beq lbl_803C66C8
/* 803C6644  7C 83 23 78 */	mr r3, r4
/* 803C6648  48 01 A0 61 */	bl mPr_GetPrivateIdx
/* 803C664C  2C 03 FF FF */	cmpwi r3, -1
/* 803C6650  40 82 00 0C */	bne lbl_803C665C
/* 803C6654  3B E0 00 04 */	li r31, 4
/* 803C6658  48 00 00 4C */	b lbl_803C66A4
lbl_803C665C:
/* 803C665C  7F C3 F3 78 */	mr r3, r30
/* 803C6660  48 00 10 D9 */	bl mMmd_GetDisplayInfo
/* 803C6664  2C 03 00 01 */	cmpwi r3, 1
/* 803C6668  41 82 00 28 */	beq lbl_803C6690
/* 803C666C  40 80 00 10 */	bge lbl_803C667C
/* 803C6670  2C 03 00 00 */	cmpwi r3, 0
/* 803C6674  40 80 00 14 */	bge lbl_803C6688
/* 803C6678  48 00 00 2C */	b lbl_803C66A4
lbl_803C667C:
/* 803C667C  2C 03 00 03 */	cmpwi r3, 3
/* 803C6680  40 80 00 24 */	bge lbl_803C66A4
/* 803C6684  48 00 00 1C */	b lbl_803C66A0
lbl_803C6688:
/* 803C6688  3B E0 00 01 */	li r31, 1
/* 803C668C  48 00 00 18 */	b lbl_803C66A4
lbl_803C6690:
/* 803C6690  7F C3 F3 78 */	mr r3, r30
/* 803C6694  3B E0 00 02 */	li r31, 2
/* 803C6698  48 00 12 91 */	bl mMmd_RequestMuseumDisplay
/* 803C669C  48 00 00 08 */	b lbl_803C66A4
lbl_803C66A0:
/* 803C66A0  3B E0 00 03 */	li r31, 3
lbl_803C66A4:
/* 803C66A4  7F A3 EB 78 */	mr r3, r29
/* 803C66A8  4B FF FD 79 */	bl mMsm_GetRemailFreeIdx
/* 803C66AC  7C 64 1B 78 */	mr r4, r3
/* 803C66B0  2C 04 FF FF */	cmpwi r4, -1
/* 803C66B4  41 82 00 14 */	beq lbl_803C66C8
/* 803C66B8  7F A3 EB 78 */	mr r3, r29
/* 803C66BC  7F E5 FB 78 */	mr r5, r31
/* 803C66C0  7F C6 F3 78 */	mr r6, r30
/* 803C66C4  4B FF FD CD */	bl mMsm_Idx2SetRemailInfo
lbl_803C66C8:
/* 803C66C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803C66CC  4B CD 48 55 */	bl func_8009AF20
/* 803C66D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C66D4  7C 08 03 A6 */	mtlr r0
/* 803C66D8  38 21 00 20 */	addi r1, r1, 0x20
/* 803C66DC  4E 80 00 20 */	blr 
