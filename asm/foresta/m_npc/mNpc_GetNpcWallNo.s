lbl_803D397C:
/* 803D397C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D3980  7C 08 02 A6 */	mflr r0
/* 803D3984  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D3988  4B FD 13 45 */	bl mFI_GetFieldId
/* 803D398C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D3990  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803D3994  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803D3998  3C 65 00 02 */	addis r3, r5, 2
/* 803D399C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803D39A0  A0 83 65 1C */	lhz r4, 0x651c(r3)
/* 803D39A4  38 60 FF FF */	li r3, -1
/* 803D39A8  40 82 00 3C */	bne lbl_803D39E4
/* 803D39AC  28 04 00 00 */	cmplwi r4, 0
/* 803D39B0  41 82 00 34 */	beq lbl_803D39E4
/* 803D39B4  28 04 FF FF */	cmplwi r4, 0xffff
/* 803D39B8  41 82 00 2C */	beq lbl_803D39E4
/* 803D39BC  3C 65 00 01 */	addis r3, r5, 1
/* 803D39C0  38 A0 00 0F */	li r5, 0xf
/* 803D39C4  38 63 74 38 */	addi r3, r3, 0x7438
/* 803D39C8  4B FF 8D 15 */	bl mNpc_SearchAnimalinfo
/* 803D39CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D39D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D39D4  1C 03 00 38 */	mulli r0, r3, 0x38
/* 803D39D8  3C 64 00 02 */	addis r3, r4, 2
/* 803D39DC  7C 63 02 14 */	add r3, r3, r0
/* 803D39E0  88 63 61 92 */	lbz r3, 0x6192(r3)
lbl_803D39E4:
/* 803D39E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D39E8  7C 08 03 A6 */	mtlr r0
/* 803D39EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D39F0  4E 80 00 20 */	blr 
