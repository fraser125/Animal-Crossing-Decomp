lbl_803CA9E0:
/* 803CA9E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CA9E4  7C 08 02 A6 */	mflr r0
/* 803CA9E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CA9EC  7C 60 1B 78 */	mr r0, r3
/* 803CA9F0  38 61 00 08 */	addi r3, r1, 8
/* 803CA9F4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803CA9F8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 803CA9FC  7F E4 FB 78 */	mr r4, r31
/* 803CAA00  48 03 CF 91 */	bl lbRk_HarvestMoonDay
/* 803CAA04  88 81 00 0A */	lbz r4, 0xa(r1)
/* 803CAA08  38 61 00 0C */	addi r3, r1, 0xc
/* 803CAA0C  88 A1 00 0B */	lbz r5, 0xb(r1)
/* 803CAA10  4B FF FD ED */	bl mNtc_make_auto_nwrite_day_string
/* 803CAA14  7C 65 1B 78 */	mr r5, r3
/* 803CAA18  38 81 00 0C */	addi r4, r1, 0xc
/* 803CAA1C  38 60 00 02 */	li r3, 2
/* 803CAA20  4B FE 6F 39 */	bl mHandbill_Set_free_str
/* 803CAA24  7F E3 FB 78 */	mr r3, r31
/* 803CAA28  48 03 CF 05 */	bl lbRk_AutumnalEquinoxDay
/* 803CAA2C  7C 60 1B 78 */	mr r0, r3
/* 803CAA30  38 61 00 0C */	addi r3, r1, 0xc
/* 803CAA34  7C 05 03 78 */	mr r5, r0
/* 803CAA38  38 80 00 09 */	li r4, 9
/* 803CAA3C  4B FF FD C1 */	bl mNtc_make_auto_nwrite_day_string
/* 803CAA40  7C 65 1B 78 */	mr r5, r3
/* 803CAA44  38 81 00 0C */	addi r4, r1, 0xc
/* 803CAA48  38 60 00 04 */	li r3, 4
/* 803CAA4C  4B FE 6F 0D */	bl mHandbill_Set_free_str
/* 803CAA50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CAA54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803CAA58  7C 08 03 A6 */	mtlr r0
/* 803CAA5C  38 21 00 30 */	addi r1, r1, 0x30
/* 803CAA60  4E 80 00 20 */	blr 
