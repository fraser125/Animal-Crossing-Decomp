lbl_803FF5F0:
/* 803FF5F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FF5F4  7C 08 02 A6 */	mflr r0
/* 803FF5F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FF5FC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF600  4B C9 B8 D5 */	bl func_8009AED4
/* 803FF604  7C 7D 1B 78 */	mr r29, r3
/* 803FF608  7C 9E 23 78 */	mr r30, r4
/* 803FF60C  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 803FF610  28 1F 00 00 */	cmplwi r31, 0
/* 803FF614  41 82 00 90 */	beq lbl_803FF6A4
/* 803FF618  38 00 00 01 */	li r0, 1
/* 803FF61C  90 1D 00 04 */	stw r0, 4(r29)
/* 803FF620  80 7D 00 04 */	lwz r3, 4(r29)
/* 803FF624  4B FF AE 35 */	bl mCD_get_size
/* 803FF628  90 7D 00 08 */	stw r3, 8(r29)
/* 803FF62C  7F E3 FB 78 */	mr r3, r31
/* 803FF630  80 9D 00 08 */	lwz r4, 8(r29)
/* 803FF634  4B C5 DA 35 */	bl bzero
/* 803FF638  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FF63C  3C A0 00 02 */	lis r5, 0x0002 /* 0x000242A0@ha */
/* 803FF640  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FF644  7F E4 FB 78 */	mr r4, r31
/* 803FF648  38 A5 42 A0 */	addi r5, r5, 0x42A0 /* 0x000242A0@l */
/* 803FF64C  4B C5 D9 D1 */	bl func_8005D01C
/* 803FF650  38 00 00 06 */	li r0, 6
/* 803FF654  7F E3 FB 78 */	mr r3, r31
/* 803FF658  90 1F 00 00 */	stw r0, 0(r31)
/* 803FF65C  4B FA D0 21 */	bl mFRm_SetSaveCheckData
/* 803FF660  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 803FF664  A0 BF 00 12 */	lhz r5, 0x12(r31)
/* 803FF668  7F E3 FB 78 */	mr r3, r31
/* 803FF66C  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 803FF670  4B FA CE BD */	bl mFRm_GetFlatCheckSum
/* 803FF674  3C 80 81 17 */	lis r4, l_keepSave@ha /* 0x81171638@ha */
/* 803FF678  B0 7F 00 12 */	sth r3, 0x12(r31)
/* 803FF67C  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 803FF680  7F E3 FB 78 */	mr r3, r31
/* 803FF684  38 84 16 38 */	addi r4, r4, l_keepSave@l /* 0x81171638@l */
/* 803FF688  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 803FF68C  4B C5 D9 91 */	bl func_8005D01C
/* 803FF690  80 9E 00 00 */	lwz r4, 0(r30)
/* 803FF694  38 60 00 01 */	li r3, 1
/* 803FF698  38 04 00 01 */	addi r0, r4, 1
/* 803FF69C  90 1E 00 00 */	stw r0, 0(r30)
/* 803FF6A0  48 00 00 08 */	b lbl_803FF6A8
lbl_803FF6A4:
/* 803FF6A4  38 60 FF FF */	li r3, -1
lbl_803FF6A8:
/* 803FF6A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF6AC  4B C9 B8 75 */	bl func_8009AF20
/* 803FF6B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FF6B4  7C 08 03 A6 */	mtlr r0
/* 803FF6B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803FF6BC  4E 80 00 20 */	blr 
