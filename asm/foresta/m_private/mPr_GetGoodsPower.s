lbl_803E1004:
/* 803E1004  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E1008  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E100C  3C 64 00 02 */	addis r3, r4, 2
/* 803E1010  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 803E1014  3C 64 00 03 */	addis r3, r4, 3
/* 803E1018  A8 63 85 2E */	lha r3, -0x7ad2(r3)
/* 803E101C  28 05 00 00 */	cmplwi r5, 0
/* 803E1020  41 82 00 34 */	beq lbl_803E1054
/* 803E1024  88 05 10 A2 */	lbz r0, 0x10a2(r5)
/* 803E1028  2C 00 00 04 */	cmpwi r0, 4
/* 803E102C  41 82 00 28 */	beq lbl_803E1054
/* 803E1030  40 80 00 10 */	bge lbl_803E1040
/* 803E1034  2C 00 00 03 */	cmpwi r0, 3
/* 803E1038  40 80 00 18 */	bge lbl_803E1050
/* 803E103C  48 00 00 18 */	b lbl_803E1054
lbl_803E1040:
/* 803E1040  2C 00 00 06 */	cmpwi r0, 6
/* 803E1044  40 80 00 10 */	bge lbl_803E1054
/* 803E1048  38 63 00 1E */	addi r3, r3, 0x1e
/* 803E104C  48 00 00 08 */	b lbl_803E1054
lbl_803E1050:
/* 803E1050  38 63 FF E2 */	addi r3, r3, -30
lbl_803E1054:
/* 803E1054  7C 60 07 34 */	extsh r0, r3
/* 803E1058  2C 00 00 32 */	cmpwi r0, 0x32
/* 803E105C  40 81 00 0C */	ble lbl_803E1068
/* 803E1060  38 60 00 32 */	li r3, 0x32
/* 803E1064  4E 80 00 20 */	blr 
lbl_803E1068:
/* 803E1068  2C 00 FF E2 */	cmpwi r0, -30
/* 803E106C  4C 80 00 20 */	bgelr 
/* 803E1070  38 60 FF E2 */	li r3, -30
/* 803E1074  4E 80 00 20 */	blr 
