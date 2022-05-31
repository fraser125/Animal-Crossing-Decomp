lbl_803BF500:
/* 803BF500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF504  7C 08 02 A6 */	mflr r0
/* 803BF508  38 60 00 1A */	li r3, 0x1a
/* 803BF50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF510  4B C4 76 C5 */	bl JW_GetAramAddress
/* 803BF514  3C 80 81 17 */	lis r4, data_81169FB8@ha /* 0x81169FB8@ha */
/* 803BF518  90 64 9F B8 */	stw r3, data_81169FB8@l(r4)  /* 0x81169FB8@l */
/* 803BF51C  38 60 00 19 */	li r3, 0x19
/* 803BF520  4B C4 76 B5 */	bl JW_GetAramAddress
/* 803BF524  3C 80 81 17 */	lis r4, Msg_rom_start@ha /* 0x81169FBC@ha */
/* 803BF528  90 64 9F BC */	stw r3, Msg_rom_start@l(r4)  /* 0x81169FBC@l */
/* 803BF52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF530  7C 08 03 A6 */	mtlr r0
/* 803BF534  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF538  4E 80 00 20 */	blr 
