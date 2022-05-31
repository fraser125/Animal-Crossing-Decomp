lbl_803A65F0:
/* 803A65F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A65F4  7C 08 02 A6 */	mflr r0
/* 803A65F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A65FC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A6600  4B CF 48 D5 */	bl func_8009AED4
/* 803A6604  7C 7D 1B 78 */	mr r29, r3
/* 803A6608  7C 9E 23 78 */	mr r30, r4
/* 803A660C  4B FF E7 CD */	bl mFI_GetBlockZMax
/* 803A6610  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803A6614  4B FF E7 7D */	bl mFI_GetBlockXMax
/* 803A6618  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A661C  7F A3 EB 78 */	mr r3, r29
/* 803A6620  7F C4 F3 78 */	mr r4, r30
/* 803A6624  7F E6 FB 78 */	mr r6, r31
/* 803A6628  4B FF EC 7D */	bl mFI_UtNumCheck
/* 803A662C  2C 03 00 00 */	cmpwi r3, 0
/* 803A6630  40 82 00 10 */	bne lbl_803A6640
/* 803A6634  3C 60 80 65 */	lis r3, data_80653D28@ha /* 0x80653D28@ha */
/* 803A6638  38 63 3D 28 */	addi r3, r3, data_80653D28@l /* 0x80653D28@l */
/* 803A663C  48 00 00 80 */	b lbl_803A66BC
lbl_803A6640:
/* 803A6640  7F A5 EB 78 */	mr r5, r29
/* 803A6644  7F C6 F3 78 */	mr r6, r30
/* 803A6648  38 61 00 0C */	addi r3, r1, 0xc
/* 803A664C  38 81 00 08 */	addi r4, r1, 8
/* 803A6650  4B FF F2 21 */	bl mFI_UtNum2BlockNum
/* 803A6654  2C 03 00 00 */	cmpwi r3, 0
/* 803A6658  40 82 00 10 */	bne lbl_803A6668
/* 803A665C  3C 60 80 65 */	lis r3, data_80653D28@ha /* 0x80653D28@ha */
/* 803A6660  38 63 3D 28 */	addi r3, r3, data_80653D28@l /* 0x80653D28@l */
/* 803A6664  48 00 00 58 */	b lbl_803A66BC
lbl_803A6668:
/* 803A6668  7F A5 EB 78 */	mr r5, r29
/* 803A666C  7F C6 F3 78 */	mr r6, r30
/* 803A6670  38 61 00 14 */	addi r3, r1, 0x14
/* 803A6674  38 81 00 10 */	addi r4, r1, 0x10
/* 803A6678  4B FF F2 51 */	bl mFI_GetUtNumInBK
/* 803A667C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A6680  80 81 00 08 */	lwz r4, 8(r1)
/* 803A6684  4B FF EB 35 */	bl mFI_GetBlockNum
/* 803A6688  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A668C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803A6690  38 A4 7A 58 */	addi r5, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A6694  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803A6698  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A669C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803A66A0  54 00 20 36 */	slwi r0, r0, 4
/* 803A66A4  80 A5 00 74 */	lwz r5, 0x74(r5)
/* 803A66A8  38 63 00 20 */	addi r3, r3, 0x20
/* 803A66AC  7C 04 02 14 */	add r0, r4, r0
/* 803A66B0  7C 65 1A 14 */	add r3, r5, r3
/* 803A66B4  54 00 10 3A */	slwi r0, r0, 2
/* 803A66B8  7C 63 02 14 */	add r3, r3, r0
lbl_803A66BC:
/* 803A66BC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A66C0  4B CF 48 61 */	bl func_8009AF20
/* 803A66C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A66C8  7C 08 03 A6 */	mtlr r0
/* 803A66CC  38 21 00 30 */	addi r1, r1, 0x30
/* 803A66D0  4E 80 00 20 */	blr 
