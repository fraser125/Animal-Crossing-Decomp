lbl_803D3C94:
/* 803D3C94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D3C98  7C 08 02 A6 */	mflr r0
/* 803D3C9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D3CA0  39 61 00 30 */	addi r11, r1, 0x30
/* 803D3CA4  4B CC 72 2D */	bl func_8009AED0
/* 803D3CA8  3C 80 81 17 */	lis r4, cand_table@ha /* 0x8116C62C@ha */
/* 803D3CAC  7C 7F 1B 78 */	mr r31, r3
/* 803D3CB0  38 64 C6 2C */	addi r3, r4, cand_table@l /* 0x8116C62C@l */
/* 803D3CB4  3B A0 00 00 */	li r29, 0
/* 803D3CB8  7C 7E 1B 78 */	mr r30, r3
/* 803D3CBC  38 80 00 48 */	li r4, 0x48
/* 803D3CC0  4B C8 93 A9 */	bl bzero
/* 803D3CC4  7F E3 FB 78 */	mr r3, r31
/* 803D3CC8  4B FF 88 11 */	bl mNpc_ClearIslandAnimalInfo
/* 803D3CCC  3C 80 80 97 */	lis r4, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803D3CD0  3C 60 80 97 */	lis r3, data_80977350@ha /* 0x80977350@ha */
/* 803D3CD4  38 84 CC 90 */	addi r4, r4, data_8096CC90@l /* 0x8096CC90@l */
/* 803D3CD8  38 00 00 EC */	li r0, 0xec
/* 803D3CDC  38 63 73 50 */	addi r3, r3, data_80977350@l /* 0x80977350@l */
/* 803D3CE0  38 A0 00 00 */	li r5, 0
/* 803D3CE4  7C 9C 23 78 */	mr r28, r4
/* 803D3CE8  7C 09 03 A6 */	mtctr r0
lbl_803D3CEC:
/* 803D3CEC  88 03 00 00 */	lbz r0, 0(r3)
/* 803D3CF0  2C 00 00 02 */	cmpwi r0, 2
/* 803D3CF4  40 82 00 10 */	bne lbl_803D3D04
/* 803D3CF8  90 BE 00 00 */	stw r5, 0(r30)
/* 803D3CFC  3B DE 00 04 */	addi r30, r30, 4
/* 803D3D00  3B BD 00 01 */	addi r29, r29, 1
lbl_803D3D04:
/* 803D3D04  2C 1D 00 12 */	cmpwi r29, 0x12
/* 803D3D08  40 80 00 10 */	bge lbl_803D3D18
/* 803D3D0C  38 63 00 01 */	addi r3, r3, 1
/* 803D3D10  38 A5 00 01 */	addi r5, r5, 1
/* 803D3D14  42 00 FF D8 */	bdnz lbl_803D3CEC
lbl_803D3D18:
/* 803D3D18  2C 1D 00 00 */	cmpwi r29, 0
/* 803D3D1C  41 81 00 08 */	bgt lbl_803D3D24
/* 803D3D20  3B A0 00 01 */	li r29, 1
lbl_803D3D24:
/* 803D3D24  4B C8 8F D1 */	bl fqrand
/* 803D3D28  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 803D3D2C  3C 00 43 30 */	lis r0, 0x4330
/* 803D3D30  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D3D34  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D3D38  38 A4 28 CC */	addi r5, r4, data_806428CC@l /* 0x806428CC@l */
/* 803D3D3C  3C 60 81 17 */	lis r3, cand_table@ha /* 0x8116C62C@ha */
/* 803D3D40  90 01 00 08 */	stw r0, 8(r1)
/* 803D3D44  38 83 C6 2C */	addi r4, r3, cand_table@l /* 0x8116C62C@l */
/* 803D3D48  C8 45 00 00 */	lfd f2, 0(r5)
/* 803D3D4C  7F E3 FB 78 */	mr r3, r31
/* 803D3D50  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D3D54  7F 85 E3 78 */	mr r5, r28
/* 803D3D58  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D3D5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D3D60  FC 00 00 1E */	fctiwz f0, f0
/* 803D3D64  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D3D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D3D6C  54 00 10 3A */	slwi r0, r0, 2
/* 803D3D70  7C 04 00 2E */	lwzx r0, r4, r0
/* 803D3D74  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803D3D78  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D3D7C  7F 84 E3 78 */	mr r4, r28
/* 803D3D80  4B FF B2 09 */	bl mNpc_SetDefAnimal
/* 803D3D84  7F 83 E3 78 */	mr r3, r28
/* 803D3D88  4B FF B2 49 */	bl mNpc_SetHaveAppeared
/* 803D3D8C  38 7F 08 98 */	addi r3, r31, 0x898
/* 803D3D90  4B FF FE 35 */	bl mNpc_SetIslandAnimalHouse
/* 803D3D94  39 61 00 30 */	addi r11, r1, 0x30
/* 803D3D98  4B CC 71 85 */	bl func_8009AF1C
/* 803D3D9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D3DA0  7C 08 03 A6 */	mtlr r0
/* 803D3DA4  38 21 00 30 */	addi r1, r1, 0x30
/* 803D3DA8  4E 80 00 20 */	blr 
