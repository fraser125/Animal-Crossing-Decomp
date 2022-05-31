lbl_803DD838:
/* 803DD838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD83C  7C 08 02 A6 */	mflr r0
/* 803DD840  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD844  4B FC 74 4D */	bl mFI_CheckFieldData
/* 803DD848  2C 03 00 00 */	cmpwi r3, 0
/* 803DD84C  41 82 00 54 */	beq lbl_803DD8A0
/* 803DD850  4B FC 74 7D */	bl mFI_GetFieldId
/* 803DD854  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803DD858  38 60 00 00 */	li r3, 0
/* 803DD85C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803DD860  41 82 00 38 */	beq lbl_803DD898
/* 803DD864  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803DD868  41 82 00 30 */	beq lbl_803DD898
/* 803DD86C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DD870  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DD874  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803DD878  2C 00 00 25 */	cmpwi r0, 0x25
/* 803DD87C  41 82 00 1C */	beq lbl_803DD898
/* 803DD880  2C 00 00 24 */	cmpwi r0, 0x24
/* 803DD884  41 82 00 14 */	beq lbl_803DD898
/* 803DD888  2C 00 00 26 */	cmpwi r0, 0x26
/* 803DD88C  41 82 00 0C */	beq lbl_803DD898
/* 803DD890  2C 00 00 27 */	cmpwi r0, 0x27
/* 803DD894  40 82 00 10 */	bne lbl_803DD8A4
lbl_803DD898:
/* 803DD898  38 60 00 01 */	li r3, 1
/* 803DD89C  48 00 00 08 */	b lbl_803DD8A4
lbl_803DD8A0:
/* 803DD8A0  38 60 00 00 */	li r3, 0
lbl_803DD8A4:
/* 803DD8A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DD8A8  7C 08 03 A6 */	mtlr r0
/* 803DD8AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DD8B0  4E 80 00 20 */	blr 
