lbl_803C98BC:
/* 803C98BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C98C0  7C 08 02 A6 */	mflr r0
/* 803C98C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C98C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803C98CC  4B CD 16 09 */	bl func_8009AED4
/* 803C98D0  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 803C98D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C98D8  1C 80 24 40 */	mulli r4, r0, 0x2440
/* 803C98DC  3B A0 00 00 */	li r29, 0
/* 803C98E0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803C98E4  3B E0 00 00 */	li r31, 0
/* 803C98E8  7F C0 22 14 */	add r30, r0, r4
lbl_803C98EC:
/* 803C98EC  38 60 00 1B */	li r3, 0x1b
/* 803C98F0  4B C3 D2 E5 */	bl JW_GetAramAddress
/* 803C98F4  57 A0 07 7E */	clrlwi r0, r29, 0x1d
/* 803C98F8  7C 7F 1A 14 */	add r3, r31, r3
/* 803C98FC  1C 80 02 20 */	mulli r4, r0, 0x220
/* 803C9900  38 A0 02 00 */	li r5, 0x200
/* 803C9904  38 84 12 80 */	addi r4, r4, 0x1280
/* 803C9908  7C 9E 22 14 */	add r4, r30, r4
/* 803C990C  4B C3 D3 69 */	bl _JW_GetResourceAram
/* 803C9910  3B BD 00 01 */	addi r29, r29, 1
/* 803C9914  3B FF 02 00 */	addi r31, r31, 0x200
/* 803C9918  2C 1D 00 04 */	cmpwi r29, 4
/* 803C991C  41 80 FF D0 */	blt lbl_803C98EC
/* 803C9920  39 61 00 20 */	addi r11, r1, 0x20
/* 803C9924  4B CD 15 FD */	bl func_8009AF20
/* 803C9928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C992C  7C 08 03 A6 */	mtlr r0
/* 803C9930  38 21 00 20 */	addi r1, r1, 0x20
/* 803C9934  4E 80 00 20 */	blr 
