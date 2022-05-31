lbl_804D9E88:
/* 804D9E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D9E8C  7C 08 02 A6 */	mflr r0
/* 804D9E90  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D9E94  39 61 00 20 */	addi r11, r1, 0x20
/* 804D9E98  4B BC 10 39 */	bl func_8009AED0
/* 804D9E9C  2C 04 00 3F */	cmpwi r4, 0x3f
/* 804D9EA0  7C 7C 1B 78 */	mr r28, r3
/* 804D9EA4  7C DD 33 78 */	mr r29, r6
/* 804D9EA8  7C FE 3B 78 */	mr r30, r7
/* 804D9EAC  7D 1F 43 78 */	mr r31, r8
/* 804D9EB0  38 00 00 00 */	li r0, 0
/* 804D9EB4  41 80 00 10 */	blt lbl_804D9EC4
/* 804D9EB8  2C 04 00 47 */	cmpwi r4, 0x47
/* 804D9EBC  40 80 00 08 */	bge lbl_804D9EC4
/* 804D9EC0  38 00 00 01 */	li r0, 1
lbl_804D9EC4:
/* 804D9EC4  2C 00 00 00 */	cmpwi r0, 0
/* 804D9EC8  41 82 00 7C */	beq lbl_804D9F44
/* 804D9ECC  7C 04 28 00 */	cmpw r4, r5
/* 804D9ED0  41 82 00 3C */	beq lbl_804D9F0C
/* 804D9ED4  7C 83 23 78 */	mr r3, r4
/* 804D9ED8  4B EF EE 09 */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 804D9EDC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D9EE0  7C 65 1B 78 */	mr r5, r3
/* 804D9EE4  C0 24 65 68 */	lfs f1, lit_604@l(r4)  /* 0x80646568@l */
/* 804D9EE8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804D9EEC  C0 63 65 64 */	lfs f3, lit_603@l(r3)  /* 0x80646564@l */
/* 804D9EF0  7F 83 E3 78 */	mr r3, r28
/* 804D9EF4  FC 40 08 90 */	fmr f2, f1
/* 804D9EF8  7F A4 EB 78 */	mr r4, r29
/* 804D9EFC  7F C6 F3 78 */	mr r6, r30
/* 804D9F00  7F E7 FB 78 */	mr r7, r31
/* 804D9F04  4B FF FE A1 */	bl Player_actor_SetupItem_Base0
/* 804D9F08  48 00 00 34 */	b lbl_804D9F3C
lbl_804D9F0C:
/* 804D9F0C  7C 83 23 78 */	mr r3, r4
/* 804D9F10  4B EF ED D1 */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 804D9F14  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804D9F18  7C 65 1B 78 */	mr r5, r3
/* 804D9F1C  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804D9F20  7F 83 E3 78 */	mr r3, r28
/* 804D9F24  C0 3C 0A 24 */	lfs f1, 0xa24(r28)
/* 804D9F28  7F A4 EB 78 */	mr r4, r29
/* 804D9F2C  C0 7C 0A 28 */	lfs f3, 0xa28(r28)
/* 804D9F30  7F C6 F3 78 */	mr r6, r30
/* 804D9F34  7F E7 FB 78 */	mr r7, r31
/* 804D9F38  4B FF FE 6D */	bl Player_actor_SetupItem_Base0
lbl_804D9F3C:
/* 804D9F3C  38 60 00 01 */	li r3, 1
/* 804D9F40  48 00 00 08 */	b lbl_804D9F48
lbl_804D9F44:
/* 804D9F44  38 60 00 00 */	li r3, 0
lbl_804D9F48:
/* 804D9F48  39 61 00 20 */	addi r11, r1, 0x20
/* 804D9F4C  4B BC 0F D1 */	bl func_8009AF1C
/* 804D9F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D9F54  7C 08 03 A6 */	mtlr r0
/* 804D9F58  38 21 00 20 */	addi r1, r1, 0x20
/* 804D9F5C  4E 80 00 20 */	blr 
