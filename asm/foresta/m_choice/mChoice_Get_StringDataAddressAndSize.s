lbl_80383B84:
/* 80383B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383B88  7C 08 02 A6 */	mflr r0
/* 80383B8C  3C C0 81 13 */	lis r6, data_811354D8@ha /* 0x811354D8@ha */
/* 80383B90  3D 00 81 13 */	lis r8, Choice_rom_start@ha /* 0x811354DC@ha */
/* 80383B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383B98  39 26 54 D8 */	addi r9, r6, data_811354D8@l /* 0x811354D8@l */
/* 80383B9C  7C 86 23 78 */	mr r6, r4
/* 80383BA0  38 88 54 DC */	addi r4, r8, Choice_rom_start@l /* 0x811354DC@l */
/* 80383BA4  7C 60 1B 78 */	mr r0, r3
/* 80383BA8  80 69 00 00 */	lwz r3, 0(r9)
/* 80383BAC  7C A7 2B 78 */	mr r7, r5
/* 80383BB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80383BB4  7C 05 03 78 */	mr r5, r0
/* 80383BB8  48 03 CB 41 */	bl mMsg_Get_BodyParam
/* 80383BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383BC0  7C 08 03 A6 */	mtlr r0
/* 80383BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80383BC8  4E 80 00 20 */	blr 
