lbl_803834BC:
/* 803834BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803834C0  7C 08 02 A6 */	mflr r0
/* 803834C4  38 60 00 0F */	li r3, 0xf
/* 803834C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803834CC  4B C8 37 09 */	bl JW_GetAramAddress
/* 803834D0  3C 80 81 13 */	lis r4, data_811354D8@ha /* 0x811354D8@ha */
/* 803834D4  90 64 54 D8 */	stw r3, data_811354D8@l(r4)  /* 0x811354D8@l */
/* 803834D8  38 60 00 0E */	li r3, 0xe
/* 803834DC  4B C8 36 F9 */	bl JW_GetAramAddress
/* 803834E0  3C 80 81 13 */	lis r4, Choice_rom_start@ha /* 0x811354DC@ha */
/* 803834E4  90 64 54 DC */	stw r3, Choice_rom_start@l(r4)  /* 0x811354DC@l */
/* 803834E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803834EC  7C 08 03 A6 */	mtlr r0
/* 803834F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803834F4  4E 80 00 20 */	blr 
