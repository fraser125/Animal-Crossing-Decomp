lbl_8048E57C:
/* 8048E57C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048E580  7C 08 02 A6 */	mflr r0
/* 8048E584  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048E588  39 61 00 20 */	addi r11, r1, 0x20
/* 8048E58C  4B C0 C9 45 */	bl func_8009AED0
/* 8048E590  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048E594  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E598  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048E59C  3F C4 00 02 */	addis r30, r4, 2
/* 8048E5A0  38 63 EB F0 */	addi r3, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E5A4  83 9E 61 3C */	lwz r28, 0x613c(r30)
/* 8048E5A8  80 03 00 08 */	lwz r0, 8(r3)
/* 8048E5AC  80 BC 00 8C */	lwz r5, 0x8c(r28)
/* 8048E5B0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8048E5B4  7F A0 2A 15 */	add. r29, r0, r5
/* 8048E5B8  40 80 00 0C */	bge lbl_8048E5C4
/* 8048E5BC  3B A0 00 00 */	li r29, 0
/* 8048E5C0  48 00 00 80 */	b lbl_8048E640
lbl_8048E5C4:
/* 8048E5C4  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8048E5C8  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 8048E5CC  7C 1D 00 00 */	cmpw r29, r0
/* 8048E5D0  40 81 00 70 */	ble lbl_8048E640
/* 8048E5D4  2C 04 FF FF */	cmpwi r4, -1
/* 8048E5D8  41 82 00 58 */	beq lbl_8048E630
/* 8048E5DC  7F 83 E3 78 */	mr r3, r28
/* 8048E5E0  38 A0 21 02 */	li r5, 0x2102
/* 8048E5E4  38 C0 00 00 */	li r6, 0
/* 8048E5E8  4B F5 28 41 */	bl mPr_SetPossessionItem
/* 8048E5EC  3B BD 8A D0 */	addi r29, r29, -30000
/* 8048E5F0  48 00 00 40 */	b lbl_8048E630
lbl_8048E5F4:
/* 8048E5F4  7F 83 E3 78 */	mr r3, r28
/* 8048E5F8  38 80 00 00 */	li r4, 0
/* 8048E5FC  4B F5 21 2D */	bl mPr_GetPossessionItemIdx
/* 8048E600  7C 64 1B 78 */	mr r4, r3
/* 8048E604  2C 04 FF FF */	cmpwi r4, -1
/* 8048E608  41 82 00 1C */	beq lbl_8048E624
/* 8048E60C  7F 83 E3 78 */	mr r3, r28
/* 8048E610  38 A0 21 02 */	li r5, 0x2102
/* 8048E614  38 C0 00 00 */	li r6, 0
/* 8048E618  4B F5 28 11 */	bl mPr_SetPossessionItem
/* 8048E61C  3B BD 8A D0 */	addi r29, r29, -30000
/* 8048E620  48 00 00 18 */	b lbl_8048E638
lbl_8048E624:
/* 8048E624  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8048E628  3B A3 86 9F */	addi r29, r3, 0x869F /* 0x0001869F@l */
/* 8048E62C  48 00 00 14 */	b lbl_8048E640
lbl_8048E630:
/* 8048E630  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8048E634  3B E3 86 9F */	addi r31, r3, 0x869F /* 0x0001869F@l */
lbl_8048E638:
/* 8048E638  7C 1D F8 00 */	cmpw r29, r31
/* 8048E63C  41 81 FF B8 */	bgt lbl_8048E5F4
lbl_8048E640:
/* 8048E640  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8048E644  39 61 00 20 */	addi r11, r1, 0x20
/* 8048E648  93 A3 00 8C */	stw r29, 0x8c(r3)
/* 8048E64C  4B C0 C8 D1 */	bl func_8009AF1C
/* 8048E650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048E654  7C 08 03 A6 */	mtlr r0
/* 8048E658  38 21 00 20 */	addi r1, r1, 0x20
/* 8048E65C  4E 80 00 20 */	blr 
