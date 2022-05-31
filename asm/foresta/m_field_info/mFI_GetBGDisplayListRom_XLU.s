lbl_803A692C:
/* 803A692C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A6930  7C 08 02 A6 */	mflr r0
/* 803A6934  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A6938  39 61 00 20 */	addi r11, r1, 0x20
/* 803A693C  4B CF 45 99 */	bl func_8009AED4
/* 803A6940  7C 7D 1B 78 */	mr r29, r3
/* 803A6944  7C 9E 23 78 */	mr r30, r4
/* 803A6948  4B FF E8 71 */	bl mFI_GetBlockNum
/* 803A694C  7C 7F 1B 78 */	mr r31, r3
/* 803A6950  7F A3 EB 78 */	mr r3, r29
/* 803A6954  7F C4 F3 78 */	mr r4, r30
/* 803A6958  4B FF E8 B1 */	bl mFI_BlockCheck
/* 803A695C  2C 03 00 00 */	cmpwi r3, 0
/* 803A6960  40 82 00 0C */	bne lbl_803A696C
/* 803A6964  38 60 00 00 */	li r3, 0
/* 803A6968  48 00 00 20 */	b lbl_803A6988
lbl_803A696C:
/* 803A696C  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6970  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A6974  80 63 00 00 */	lwz r3, 0(r3)
/* 803A6978  1C 1F 06 14 */	mulli r0, r31, 0x614
/* 803A697C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 803A6980  7C 63 02 14 */	add r3, r3, r0
/* 803A6984  80 63 00 08 */	lwz r3, 8(r3)
lbl_803A6988:
/* 803A6988  39 61 00 20 */	addi r11, r1, 0x20
/* 803A698C  4B CF 45 95 */	bl func_8009AF20
/* 803A6990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6994  7C 08 03 A6 */	mtlr r0
/* 803A6998  38 21 00 20 */	addi r1, r1, 0x20
/* 803A699C  4E 80 00 20 */	blr 
