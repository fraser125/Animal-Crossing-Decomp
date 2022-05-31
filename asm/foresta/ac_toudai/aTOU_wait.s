lbl_805BF4C0:
/* 805BF4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BF4C4  7C 08 02 A6 */	mflr r0
/* 805BF4C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BF4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BF4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BF4D4  93 C1 00 08 */	stw r30, 8(r1)
/* 805BF4D8  7C 7E 1B 78 */	mr r30, r3
/* 805BF4DC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805BF4E0  3C 63 00 02 */	addis r3, r3, 2
/* 805BF4E4  83 E3 61 1C */	lwz r31, 0x611c(r3)
/* 805BF4E8  4B E2 E6 25 */	bl mSC_LightHouse_Switch_Check
/* 805BF4EC  2C 03 00 00 */	cmpwi r3, 0
/* 805BF4F0  41 82 00 40 */	beq lbl_805BF530
/* 805BF4F4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 805BF4F8  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 805BF4FC  7C 1F 00 00 */	cmpw r31, r0
/* 805BF500  40 80 00 0C */	bge lbl_805BF50C
/* 805BF504  2C 1F 46 50 */	cmpwi r31, 0x4650
/* 805BF508  40 80 00 28 */	bge lbl_805BF530
lbl_805BF50C:
/* 805BF50C  3C 60 80 65 */	lis r3, lit_639@ha /* 0x8064ABFC@ha */
/* 805BF510  38 00 00 01 */	li r0, 1
/* 805BF514  38 83 AB FC */	addi r4, r3, lit_639@l /* 0x8064ABFC@l */
/* 805BF518  7F C3 F3 78 */	mr r3, r30
/* 805BF51C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805BF520  38 80 00 02 */	li r4, 2
/* 805BF524  D0 1E 01 84 */	stfs f0, 0x184(r30)
/* 805BF528  90 1E 02 BC */	stw r0, 0x2bc(r30)
/* 805BF52C  48 00 00 D5 */	bl aTOU_setup_action
lbl_805BF530:
/* 805BF530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BF534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BF538  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BF53C  7C 08 03 A6 */	mtlr r0
/* 805BF540  38 21 00 10 */	addi r1, r1, 0x10
/* 805BF544  4E 80 00 20 */	blr 
