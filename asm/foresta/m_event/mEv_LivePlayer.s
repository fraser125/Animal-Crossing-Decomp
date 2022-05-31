lbl_8039E6B0:
/* 8039E6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039E6B4  7C 08 02 A6 */	mflr r0
/* 8039E6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039E6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039E6C0  7C 7F 1B 78 */	mr r31, r3
/* 8039E6C4  4B FF C7 F5 */	bl mEv_CheckTitleDemo
/* 8039E6C8  2C 03 00 00 */	cmpwi r3, 0
/* 8039E6CC  41 82 00 0C */	beq lbl_8039E6D8
/* 8039E6D0  38 60 00 00 */	li r3, 0
/* 8039E6D4  48 00 00 8C */	b lbl_8039E760
lbl_8039E6D8:
/* 8039E6D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039E6DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039E6E0  3C 63 00 03 */	addis r3, r3, 3
/* 8039E6E4  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 8039E6E8  28 00 00 00 */	cmplwi r0, 0
/* 8039E6EC  41 82 00 0C */	beq lbl_8039E6F8
/* 8039E6F0  38 60 00 00 */	li r3, 0
/* 8039E6F4  48 00 00 6C */	b lbl_8039E760
lbl_8039E6F8:
/* 8039E6F8  28 1F 00 04 */	cmplwi r31, 4
/* 8039E6FC  40 80 00 34 */	bge lbl_8039E730
/* 8039E700  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039E704  38 63 00 16 */	addi r3, r3, 0x16
/* 8039E708  4B FF C3 11 */	bl mEv_CheckEvent
/* 8039E70C  2C 03 00 01 */	cmpwi r3, 1
/* 8039E710  41 82 00 18 */	beq lbl_8039E728
/* 8039E714  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039E718  38 63 00 06 */	addi r3, r3, 6
/* 8039E71C  4B FF C2 FD */	bl mEv_CheckEvent
/* 8039E720  2C 03 00 01 */	cmpwi r3, 1
/* 8039E724  40 82 00 38 */	bne lbl_8039E75C
lbl_8039E728:
/* 8039E728  38 60 00 00 */	li r3, 0
/* 8039E72C  48 00 00 34 */	b lbl_8039E760
lbl_8039E730:
/* 8039E730  28 1F 00 05 */	cmplwi r31, 5
/* 8039E734  40 80 00 20 */	bge lbl_8039E754
/* 8039E738  3C 7F 20 00 */	addis r3, r31, 0x2000
/* 8039E73C  38 63 00 16 */	addi r3, r3, 0x16
/* 8039E740  4B FF C2 D9 */	bl mEv_CheckEvent
/* 8039E744  2C 03 00 01 */	cmpwi r3, 1
/* 8039E748  40 82 00 14 */	bne lbl_8039E75C
/* 8039E74C  38 60 00 00 */	li r3, 0
/* 8039E750  48 00 00 10 */	b lbl_8039E760
lbl_8039E754:
/* 8039E754  38 60 00 00 */	li r3, 0
/* 8039E758  48 00 00 08 */	b lbl_8039E760
lbl_8039E75C:
/* 8039E75C  38 60 00 01 */	li r3, 1
lbl_8039E760:
/* 8039E760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039E764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039E768  7C 08 03 A6 */	mtlr r0
/* 8039E76C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039E770  4E 80 00 20 */	blr 
