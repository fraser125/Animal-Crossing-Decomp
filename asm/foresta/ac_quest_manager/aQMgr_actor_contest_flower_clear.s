lbl_80487628:
/* 80487628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048762C  7C 08 02 A6 */	mflr r0
/* 80487630  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80487634  28 04 00 00 */	cmplwi r4, 0
/* 80487638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048763C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80487640  3C A3 00 02 */	addis r5, r3, 2
/* 80487644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487648  41 82 00 50 */	beq lbl_80487698
/* 8048764C  83 E4 00 08 */	lwz r31, 8(r4)
/* 80487650  28 1F 00 00 */	cmplwi r31, 0
/* 80487654  41 82 00 44 */	beq lbl_80487698
/* 80487658  88 65 61 25 */	lbz r3, 0x6125(r5)
/* 8048765C  28 03 00 01 */	cmplwi r3, 1
/* 80487660  41 82 00 30 */	beq lbl_80487690
/* 80487664  28 03 00 02 */	cmplwi r3, 2
/* 80487668  40 82 00 10 */	bne lbl_80487678
/* 8048766C  88 05 61 23 */	lbz r0, 0x6123(r5)
/* 80487670  28 00 00 19 */	cmplwi r0, 0x19
/* 80487674  41 80 00 1C */	blt lbl_80487690
lbl_80487678:
/* 80487678  28 03 00 09 */	cmplwi r3, 9
/* 8048767C  40 80 00 14 */	bge lbl_80487690
/* 80487680  7F E3 FB 78 */	mr r3, r31
/* 80487684  4B F5 B5 69 */	bl mQst_CheckLimitOver
/* 80487688  2C 03 00 01 */	cmpwi r3, 1
/* 8048768C  40 82 00 0C */	bne lbl_80487698
lbl_80487690:
/* 80487690  7F E3 FB 78 */	mr r3, r31
/* 80487694  4B F5 B3 4D */	bl mQst_ClearContest
lbl_80487698:
/* 80487698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048769C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804876A0  7C 08 03 A6 */	mtlr r0
/* 804876A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804876A8  4E 80 00 20 */	blr 
