lbl_805B7250:
/* 805B7250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B7254  7C 08 02 A6 */	mflr r0
/* 805B7258  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B725C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7260  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805B7264  3C A5 00 02 */	addis r5, r5, 2
/* 805B7268  38 80 00 00 */	li r4, 0
/* 805B726C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B7270  7C 7F 1B 78 */	mr r31, r3
/* 805B7274  80 05 61 10 */	lwz r0, 0x6110(r5)
/* 805B7278  90 03 02 D8 */	stw r0, 0x2d8(r3)
/* 805B727C  48 00 00 3D */	bl func_805B72B8
/* 805B7280  7F E3 FB 78 */	mr r3, r31
/* 805B7284  48 00 03 51 */	bl aPBOX_ctrl_light
/* 805B7288  2C 03 00 00 */	cmpwi r3, 0
/* 805B728C  41 82 00 10 */	beq lbl_805B729C
/* 805B7290  38 00 3F FF */	li r0, 0x3fff
/* 805B7294  90 1F 02 B4 */	stw r0, 0x2b4(r31)
/* 805B7298  48 00 00 0C */	b lbl_805B72A4
lbl_805B729C:
/* 805B729C  38 00 00 00 */	li r0, 0
/* 805B72A0  90 1F 02 B4 */	stw r0, 0x2b4(r31)
lbl_805B72A4:
/* 805B72A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B72A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B72AC  7C 08 03 A6 */	mtlr r0
/* 805B72B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B72B4  4E 80 00 20 */	blr 
