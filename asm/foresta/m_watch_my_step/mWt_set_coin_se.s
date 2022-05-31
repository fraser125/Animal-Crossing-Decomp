lbl_803F5CC4:
/* 803F5CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F5CC8  7C 08 02 A6 */	mflr r0
/* 803F5CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F5CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F5CD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803F5CD8  40 82 00 38 */	bne lbl_803F5D10
/* 803F5CDC  3C 60 81 17 */	lis r3, S_se_play_flg@ha /* 0x81171590@ha */
/* 803F5CE0  80 03 15 90 */	lwz r0, S_se_play_flg@l(r3)  /* 0x81171590@l */
/* 803F5CE4  2C 00 00 01 */	cmpwi r0, 1
/* 803F5CE8  40 82 00 60 */	bne lbl_803F5D48
/* 803F5CEC  38 60 00 4C */	li r3, 0x4c
/* 803F5CF0  48 23 82 35 */	bl sAdo_SysLevStop
/* 803F5CF4  3C 60 81 17 */	lis r3, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5CF8  38 00 00 00 */	li r0, 0
/* 803F5CFC  38 63 15 94 */	addi r3, r3, S_mybell_conf@l /* 0x81171594@l */
/* 803F5D00  98 03 00 0C */	stb r0, 0xc(r3)
/* 803F5D04  98 03 00 0D */	stb r0, 0xd(r3)
/* 803F5D08  B0 03 00 08 */	sth r0, 8(r3)
/* 803F5D0C  48 00 00 3C */	b lbl_803F5D48
lbl_803F5D10:
/* 803F5D10  3C 60 81 17 */	lis r3, S_se_play_flg@ha /* 0x81171590@ha */
/* 803F5D14  80 03 15 90 */	lwz r0, S_se_play_flg@l(r3)  /* 0x81171590@l */
/* 803F5D18  2C 00 00 00 */	cmpwi r0, 0
/* 803F5D1C  40 82 00 2C */	bne lbl_803F5D48
/* 803F5D20  38 60 00 4C */	li r3, 0x4c
/* 803F5D24  48 23 81 E1 */	bl sAdo_SysLevStart
/* 803F5D28  3C 60 81 17 */	lis r3, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5D2C  38 A0 00 01 */	li r5, 1
/* 803F5D30  38 83 15 94 */	addi r4, r3, S_mybell_conf@l /* 0x81171594@l */
/* 803F5D34  38 60 00 00 */	li r3, 0
/* 803F5D38  38 00 01 2C */	li r0, 0x12c
/* 803F5D3C  98 A4 00 0C */	stb r5, 0xc(r4)
/* 803F5D40  98 64 00 0D */	stb r3, 0xd(r4)
/* 803F5D44  B0 04 00 08 */	sth r0, 8(r4)
lbl_803F5D48:
/* 803F5D48  3C 60 81 17 */	lis r3, S_se_play_flg@ha /* 0x81171590@ha */
/* 803F5D4C  93 E3 15 90 */	stw r31, S_se_play_flg@l(r3)  /* 0x81171590@l */
/* 803F5D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F5D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F5D58  7C 08 03 A6 */	mtlr r0
/* 803F5D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803F5D60  4E 80 00 20 */	blr 
