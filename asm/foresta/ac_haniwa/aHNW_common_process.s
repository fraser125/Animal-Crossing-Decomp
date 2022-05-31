lbl_80428C18:
/* 80428C18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80428C1C  7C 08 02 A6 */	mflr r0
/* 80428C20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80428C24  39 61 00 20 */	addi r11, r1, 0x20
/* 80428C28  4B C7 22 A9 */	bl func_8009AED0
/* 80428C2C  8B A3 02 83 */	lbz r29, 0x283(r3)
/* 80428C30  7C 7E 1B 78 */	mr r30, r3
/* 80428C34  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80428C38  7C 9C 23 78 */	mr r28, r4
/* 80428C3C  1C 7D 26 B0 */	mulli r3, r29, 0x26b0
/* 80428C40  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 80428C44  7C 60 1A 14 */	add r3, r0, r3
/* 80428C48  3C 63 00 01 */	addis r3, r3, 1
/* 80428C4C  38 63 9C E8 */	addi r3, r3, -25368
/* 80428C50  4B FB 73 F5 */	bl mPr_NullCheckPersonalID
/* 80428C54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80428C58  40 82 00 2C */	bne lbl_80428C84
/* 80428C5C  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 80428C60  2C 00 00 00 */	cmpwi r0, 0
/* 80428C64  40 82 00 20 */	bne lbl_80428C84
/* 80428C68  80 BE 02 0C */	lwz r5, 0x20c(r30)
/* 80428C6C  7F C3 F3 78 */	mr r3, r30
/* 80428C70  7F 84 E3 78 */	mr r4, r28
/* 80428C74  4B FF FD E1 */	bl aHNW_setupAction
/* 80428C78  38 00 00 01 */	li r0, 1
/* 80428C7C  90 1E 01 90 */	stw r0, 0x190(r30)
/* 80428C80  48 00 00 44 */	b lbl_80428CC4
lbl_80428C84:
/* 80428C84  2C 1F 00 00 */	cmpwi r31, 0
/* 80428C88  41 82 00 34 */	beq lbl_80428CBC
/* 80428C8C  80 1E 02 0C */	lwz r0, 0x20c(r30)
/* 80428C90  2C 00 00 02 */	cmpwi r0, 2
/* 80428C94  40 80 00 28 */	bge lbl_80428CBC
/* 80428C98  3C 60 80 64 */	lis r3, lit_822@ha /* 0x80643FF4@ha */
/* 80428C9C  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 80428CA0  C0 03 3F F4 */	lfs f0, lit_822@l(r3)  /* 0x80643FF4@l */
/* 80428CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80428CA8  4C 40 13 82 */	cror 2, 0, 2
/* 80428CAC  40 82 00 10 */	bne lbl_80428CBC
/* 80428CB0  38 00 00 00 */	li r0, 0
/* 80428CB4  90 1E 01 90 */	stw r0, 0x190(r30)
/* 80428CB8  48 00 00 0C */	b lbl_80428CC4
lbl_80428CBC:
/* 80428CBC  38 00 00 01 */	li r0, 1
/* 80428CC0  90 1E 01 90 */	stw r0, 0x190(r30)
lbl_80428CC4:
/* 80428CC4  2C 1F 00 00 */	cmpwi r31, 0
/* 80428CC8  41 82 00 10 */	beq lbl_80428CD8
/* 80428CCC  80 1E 02 0C */	lwz r0, 0x20c(r30)
/* 80428CD0  2C 00 00 02 */	cmpwi r0, 2
/* 80428CD4  41 80 00 10 */	blt lbl_80428CE4
lbl_80428CD8:
/* 80428CD8  7F C3 F3 78 */	mr r3, r30
/* 80428CDC  4B FF EB 6D */	bl aHNW_search_player
/* 80428CE0  48 00 00 10 */	b lbl_80428CF0
lbl_80428CE4:
/* 80428CE4  7F C3 F3 78 */	mr r3, r30
/* 80428CE8  7F A4 EB 78 */	mr r4, r29
/* 80428CEC  4B FF EB 89 */	bl aHNW_search_front
lbl_80428CF0:
/* 80428CF0  C0 3E 02 78 */	lfs f1, 0x278(r30)
/* 80428CF4  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 80428CF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80428CFC  40 81 00 1C */	ble lbl_80428D18
/* 80428D00  3C 60 80 64 */	lis r3, lit_847@ha /* 0x80644000@ha */
/* 80428D04  38 83 40 00 */	addi r4, r3, lit_847@l /* 0x80644000@l */
/* 80428D08  C0 44 00 00 */	lfs f2, 0(r4)
/* 80428D0C  38 7E 01 88 */	addi r3, r30, 0x188
/* 80428D10  4B F9 1F 59 */	bl chase_f
/* 80428D14  48 00 00 18 */	b lbl_80428D2C
lbl_80428D18:
/* 80428D18  3C 60 80 64 */	lis r3, lit_848@ha /* 0x80644004@ha */
/* 80428D1C  38 83 40 04 */	addi r4, r3, lit_848@l /* 0x80644004@l */
/* 80428D20  C0 44 00 00 */	lfs f2, 0(r4)
/* 80428D24  38 7E 01 88 */	addi r3, r30, 0x188
/* 80428D28  4B F9 1F 41 */	bl chase_f
lbl_80428D2C:
/* 80428D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80428D30  4B C7 21 ED */	bl func_8009AF1C
/* 80428D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80428D38  7C 08 03 A6 */	mtlr r0
/* 80428D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80428D40  4E 80 00 20 */	blr 
