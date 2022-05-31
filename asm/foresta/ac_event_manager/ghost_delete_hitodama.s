lbl_80420C50:
/* 80420C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80420C54  7C 08 02 A6 */	mflr r0
/* 80420C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80420C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80420C60  4B C7 A2 71 */	bl func_8009AED0
/* 80420C64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80420C68  3B A0 00 00 */	li r29, 0
/* 80420C6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80420C70  3F C3 00 02 */	addis r30, r3, 2
/* 80420C74  83 9E 61 3C */	lwz r28, 0x613c(r30)
lbl_80420C78:
/* 80420C78  38 1D 2D 28 */	addi r0, r29, 0x2d28
/* 80420C7C  7F 83 E3 78 */	mr r3, r28
/* 80420C80  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80420C84  38 A0 00 00 */	li r5, 0
/* 80420C88  4B FB FA E9 */	bl mPr_GetPossessionItemIdxWithCond
/* 80420C8C  3B FD 2D 28 */	addi r31, r29, 0x2d28
/* 80420C90  7C 64 1B 78 */	mr r4, r3
/* 80420C94  48 00 00 28 */	b lbl_80420CBC
lbl_80420C98:
/* 80420C98  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80420C9C  38 A0 00 00 */	li r5, 0
/* 80420CA0  38 C0 00 00 */	li r6, 0
/* 80420CA4  4B FC 01 85 */	bl mPr_SetPossessionItem
/* 80420CA8  7F 83 E3 78 */	mr r3, r28
/* 80420CAC  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80420CB0  38 A0 00 00 */	li r5, 0
/* 80420CB4  4B FB FA BD */	bl mPr_GetPossessionItemIdxWithCond
/* 80420CB8  7C 64 1B 78 */	mr r4, r3
lbl_80420CBC:
/* 80420CBC  2C 04 FF FF */	cmpwi r4, -1
/* 80420CC0  40 82 FF D8 */	bne lbl_80420C98
/* 80420CC4  3B BD 00 01 */	addi r29, r29, 1
/* 80420CC8  2C 1D 00 05 */	cmpwi r29, 5
/* 80420CCC  41 80 FF AC */	blt lbl_80420C78
/* 80420CD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80420CD4  4B C7 A2 49 */	bl func_8009AF1C
/* 80420CD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80420CDC  7C 08 03 A6 */	mtlr r0
/* 80420CE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80420CE4  4E 80 00 20 */	blr 
