lbl_803E3C68:
/* 803E3C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E3C6C  7C 08 02 A6 */	mflr r0
/* 803E3C70  2C 03 00 00 */	cmpwi r3, 0
/* 803E3C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E3C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E3C7C  3B E0 00 00 */	li r31, 0
/* 803E3C80  41 80 00 3C */	blt lbl_803E3CBC
/* 803E3C84  2C 03 00 0F */	cmpwi r3, 0xf
/* 803E3C88  40 80 00 34 */	bge lbl_803E3CBC
/* 803E3C8C  4B FF F1 85 */	bl mQst_GetErrandIdxbyItemIdx
/* 803E3C90  2C 03 FF FF */	cmpwi r3, -1
/* 803E3C94  41 82 00 28 */	beq lbl_803E3CBC
/* 803E3C98  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E3C9C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E3CA0  1C 63 00 58 */	mulli r3, r3, 0x58
/* 803E3CA4  3C 84 00 02 */	addis r4, r4, 2
/* 803E3CA8  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 803E3CAC  38 63 02 EC */	addi r3, r3, 0x2ec
/* 803E3CB0  7C 60 1A 14 */	add r3, r0, r3
/* 803E3CB4  4B FF FF 75 */	bl mQst_CheckFirstJobQuest
/* 803E3CB8  7C 7F 1B 78 */	mr r31, r3
lbl_803E3CBC:
/* 803E3CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E3CC0  7F E3 FB 78 */	mr r3, r31
/* 803E3CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E3CC8  7C 08 03 A6 */	mtlr r0
/* 803E3CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E3CD0  4E 80 00 20 */	blr 
