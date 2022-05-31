lbl_80493D44:
/* 80493D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493D48  7C 08 02 A6 */	mflr r0
/* 80493D4C  3C 60 80 69 */	lis r3, l_game_hint@ha /* 0x8068B528@ha */
/* 80493D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493D54  54 80 10 3A */	slwi r0, r4, 2
/* 80493D58  38 83 B5 28 */	addi r4, r3, l_game_hint@l /* 0x8068B528@l */
/* 80493D5C  38 60 00 05 */	li r3, 5
/* 80493D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80493D64  7F E4 00 2E */	lwzx r31, r4, r0
/* 80493D68  4B F5 06 69 */	bl mQst_GetRandom
/* 80493D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80493D70  7C 7F 1A 14 */	add r3, r31, r3
/* 80493D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80493D78  7C 08 03 A6 */	mtlr r0
/* 80493D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80493D80  4E 80 00 20 */	blr 
