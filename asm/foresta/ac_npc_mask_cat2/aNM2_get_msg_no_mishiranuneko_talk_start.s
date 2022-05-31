lbl_8055FC08:
/* 8055FC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055FC0C  7C 08 02 A6 */	mflr r0
/* 8055FC10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055FC18  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FC1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055FC20  93 C1 00 08 */	stw r30, 8(r1)
/* 8055FC24  3F C3 00 02 */	addis r30, r3, 2
/* 8055FC28  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8055FC2C  4B FF FF 59 */	bl aNM2_GetBeforePrivateIdx
/* 8055FC30  7C 7F 1B 78 */	mr r31, r3
/* 8055FC34  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8055FC38  4B E8 0A 71 */	bl mPr_GetPrivateIdx
/* 8055FC3C  2C 1F FF FF */	cmpwi r31, -1
/* 8055FC40  41 82 00 0C */	beq lbl_8055FC4C
/* 8055FC44  38 60 32 74 */	li r3, 0x3274
/* 8055FC48  48 00 00 18 */	b lbl_8055FC60
lbl_8055FC4C:
/* 8055FC4C  2C 03 FF FF */	cmpwi r3, -1
/* 8055FC50  41 82 00 0C */	beq lbl_8055FC5C
/* 8055FC54  38 60 32 75 */	li r3, 0x3275
/* 8055FC58  48 00 00 08 */	b lbl_8055FC60
lbl_8055FC5C:
/* 8055FC5C  38 60 32 76 */	li r3, 0x3276
lbl_8055FC60:
/* 8055FC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055FC64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055FC68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055FC6C  7C 08 03 A6 */	mtlr r0
/* 8055FC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8055FC74  4E 80 00 20 */	blr 
