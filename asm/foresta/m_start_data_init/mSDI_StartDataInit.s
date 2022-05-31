lbl_803EEBC8:
/* 803EEBC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EEBCC  7C 08 02 A6 */	mflr r0
/* 803EEBD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EEBD4  39 61 00 20 */	addi r11, r1, 0x20
/* 803EEBD8  4B CA C2 FD */	bl func_8009AED4
/* 803EEBDC  7C BE 2B 79 */	or. r30, r5, r5
/* 803EEBE0  7C 7D 1B 78 */	mr r29, r3
/* 803EEBE4  41 80 00 0C */	blt lbl_803EEBF0
/* 803EEBE8  2C 1E 00 05 */	cmpwi r30, 5
/* 803EEBEC  41 80 00 08 */	blt lbl_803EEBF4
lbl_803EEBF0:
/* 803EEBF0  3B C0 00 00 */	li r30, 0
lbl_803EEBF4:
/* 803EEBF4  7F A3 EB 78 */	mr r3, r29
/* 803EEBF8  7F C5 F3 78 */	mr r5, r30
/* 803EEBFC  38 C0 00 01 */	li r6, 1
/* 803EEC00  4B FF FF 65 */	bl mSDI_StartInitBefore
/* 803EEC04  7C 7F 1B 78 */	mr r31, r3
/* 803EEC08  2C 1F 00 01 */	cmpwi r31, 1
/* 803EEC0C  40 82 00 20 */	bne lbl_803EEC2C
/* 803EEC10  3C 60 80 66 */	lis r3, renew_reserve_mode_table@ha /* 0x8065DCB8@ha */
/* 803EEC14  57 C0 10 3A */	slwi r0, r30, 2
/* 803EEC18  38 83 DC B8 */	addi r4, r3, renew_reserve_mode_table@l /* 0x8065DCB8@l */
/* 803EEC1C  7F A3 EB 78 */	mr r3, r29
/* 803EEC20  7C 84 00 2E */	lwzx r4, r4, r0
/* 803EEC24  38 A0 00 01 */	li r5, 1
/* 803EEC28  4B FF FD 0D */	bl mSDI_StartInitAfter
lbl_803EEC2C:
/* 803EEC2C  7F E3 FB 78 */	mr r3, r31
/* 803EEC30  39 61 00 20 */	addi r11, r1, 0x20
/* 803EEC34  4B CA C2 ED */	bl func_8009AF20
/* 803EEC38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EEC3C  7C 08 03 A6 */	mtlr r0
/* 803EEC40  38 21 00 20 */	addi r1, r1, 0x20
/* 803EEC44  4E 80 00 20 */	blr 
