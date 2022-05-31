lbl_805BF548:
/* 805BF548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BF54C  7C 08 02 A6 */	mflr r0
/* 805BF550  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BF554  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BF558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BF55C  93 C1 00 08 */	stw r30, 8(r1)
/* 805BF560  7C 7E 1B 78 */	mr r30, r3
/* 805BF564  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805BF568  3C 63 00 02 */	addis r3, r3, 2
/* 805BF56C  83 E3 61 1C */	lwz r31, 0x611c(r3)
/* 805BF570  4B E2 E5 9D */	bl mSC_LightHouse_Switch_Check
/* 805BF574  2C 03 00 00 */	cmpwi r3, 0
/* 805BF578  41 82 00 1C */	beq lbl_805BF594
/* 805BF57C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 805BF580  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 805BF584  7C 1F 00 00 */	cmpw r31, r0
/* 805BF588  40 80 00 18 */	bge lbl_805BF5A0
/* 805BF58C  2C 1F 46 50 */	cmpwi r31, 0x4650
/* 805BF590  41 80 00 10 */	blt lbl_805BF5A0
lbl_805BF594:
/* 805BF594  7F C3 F3 78 */	mr r3, r30
/* 805BF598  38 80 00 03 */	li r4, 3
/* 805BF59C  48 00 00 65 */	bl aTOU_setup_action
lbl_805BF5A0:
/* 805BF5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BF5A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BF5A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BF5AC  7C 08 03 A6 */	mtlr r0
/* 805BF5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805BF5B4  4E 80 00 20 */	blr 
