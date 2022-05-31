lbl_803E2ED4:
/* 803E2ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2ED8  7C 08 02 A6 */	mflr r0
/* 803E2EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E2EE4  3B E0 00 00 */	li r31, 0
/* 803E2EE8  93 C1 00 08 */	stw r30, 8(r1)
/* 803E2EEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 803E2EF0  41 80 00 7C */	blt lbl_803E2F6C
/* 803E2EF4  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803E2EF8  40 80 00 74 */	bge lbl_803E2F6C
/* 803E2EFC  4B FF FE A5 */	bl mQst_GetDeliveryIdxbyItemIdx
/* 803E2F00  2C 03 FF FF */	cmpwi r3, -1
/* 803E2F04  41 82 00 30 */	beq lbl_803E2F34
/* 803E2F08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E2F0C  38 80 00 01 */	li r4, 1
/* 803E2F10  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803E2F14  1C 7E 00 28 */	mulli r3, r30, 0x28
/* 803E2F18  3C A5 00 02 */	addis r5, r5, 2
/* 803E2F1C  80 05 61 3C */	lwz r0, 0x613c(r5)
/* 803E2F20  38 63 00 94 */	addi r3, r3, 0x94
/* 803E2F24  7C 60 1A 14 */	add r3, r0, r3
/* 803E2F28  4B FF F9 C1 */	bl mQst_ClearDelivery
/* 803E2F2C  3B E0 00 01 */	li r31, 1
/* 803E2F30  48 00 00 3C */	b lbl_803E2F6C
lbl_803E2F34:
/* 803E2F34  7F C3 F3 78 */	mr r3, r30
/* 803E2F38  4B FF FE D9 */	bl mQst_GetErrandIdxbyItemIdx
/* 803E2F3C  2C 03 FF FF */	cmpwi r3, -1
/* 803E2F40  41 82 00 2C */	beq lbl_803E2F6C
/* 803E2F44  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E2F48  38 80 00 01 */	li r4, 1
/* 803E2F4C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E2F50  1C 63 00 58 */	mulli r3, r3, 0x58
/* 803E2F54  3C A5 00 02 */	addis r5, r5, 2
/* 803E2F58  80 05 61 3C */	lwz r0, 0x613c(r5)
/* 803E2F5C  38 63 02 EC */	addi r3, r3, 0x2ec
/* 803E2F60  7C 60 1A 14 */	add r3, r0, r3
/* 803E2F64  4B FF F9 E9 */	bl mQst_ClearErrand
/* 803E2F68  3B E0 00 01 */	li r31, 1
lbl_803E2F6C:
/* 803E2F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2F70  7F E3 FB 78 */	mr r3, r31
/* 803E2F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E2F78  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E2F7C  7C 08 03 A6 */	mtlr r0
/* 803E2F80  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2F84  4E 80 00 20 */	blr 
