lbl_803A8C30:
/* 803A8C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8C34  7C 08 02 A6 */	mflr r0
/* 803A8C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8C40  4B CF 22 95 */	bl func_8009AED4
/* 803A8C44  7C 7D 1B 78 */	mr r29, r3
/* 803A8C48  7C 9E 23 78 */	mr r30, r4
/* 803A8C4C  3B E0 00 00 */	li r31, 0
/* 803A8C50  4B FF C0 41 */	bl mFI_CheckFieldData
/* 803A8C54  2C 03 00 00 */	cmpwi r3, 0
/* 803A8C58  41 82 00 10 */	beq lbl_803A8C68
/* 803A8C5C  4B FF C0 71 */	bl mFI_GetFieldId
/* 803A8C60  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803A8C64  41 82 00 54 */	beq lbl_803A8CB8
lbl_803A8C68:
/* 803A8C68  34 1D FF FF */	addic. r0, r29, -1
/* 803A8C6C  41 80 00 8C */	blt lbl_803A8CF8
/* 803A8C70  38 1D FF FF */	addi r0, r29, -1
/* 803A8C74  2C 00 00 05 */	cmpwi r0, 5
/* 803A8C78  40 80 00 80 */	bge lbl_803A8CF8
/* 803A8C7C  34 1E FF FF */	addic. r0, r30, -1
/* 803A8C80  41 80 00 78 */	blt lbl_803A8CF8
/* 803A8C84  38 1E FF FF */	addi r0, r30, -1
/* 803A8C88  2C 00 00 06 */	cmpwi r0, 6
/* 803A8C8C  40 80 00 6C */	bge lbl_803A8CF8
/* 803A8C90  1C 80 00 05 */	mulli r4, r0, 5
/* 803A8C94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A8C98  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803A8C9C  7C 7D 22 14 */	add r3, r29, r4
/* 803A8CA0  38 63 FF FF */	addi r3, r3, -1
/* 803A8CA4  54 63 28 34 */	slwi r3, r3, 5
/* 803A8CA8  7C 60 1A 14 */	add r3, r0, r3
/* 803A8CAC  3F E3 00 02 */	addis r31, r3, 2
/* 803A8CB0  3B FF 0F 1C */	addi r31, r31, 0xf1c
/* 803A8CB4  48 00 00 44 */	b lbl_803A8CF8
lbl_803A8CB8:
/* 803A8CB8  7F A3 EB 78 */	mr r3, r29
/* 803A8CBC  7F C4 F3 78 */	mr r4, r30
/* 803A8CC0  4B FF C5 49 */	bl mFI_BlockCheck
/* 803A8CC4  2C 03 00 01 */	cmpwi r3, 1
/* 803A8CC8  40 82 00 30 */	bne lbl_803A8CF8
/* 803A8CCC  4B FF C0 C5 */	bl mFI_GetBlockXMax
/* 803A8CD0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803A8CD4  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A8CD8  7C 9E 01 D6 */	mullw r4, r30, r0
/* 803A8CDC  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A8CE0  80 63 00 00 */	lwz r3, 0(r3)
/* 803A8CE4  80 03 00 74 */	lwz r0, 0x74(r3)
/* 803A8CE8  7C 7D 22 14 */	add r3, r29, r4
/* 803A8CEC  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A8CF0  7C 60 1A 14 */	add r3, r0, r3
/* 803A8CF4  83 E3 05 88 */	lwz r31, 0x588(r3)
lbl_803A8CF8:
/* 803A8CF8  7F E3 FB 78 */	mr r3, r31
/* 803A8CFC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8D00  4B CF 22 21 */	bl func_8009AF20
/* 803A8D04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A8D08  7C 08 03 A6 */	mtlr r0
/* 803A8D0C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A8D10  4E 80 00 20 */	blr 
