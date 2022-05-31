lbl_804BF880:
/* 804BF880  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BF884  7C 08 02 A6 */	mflr r0
/* 804BF888  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BF88C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804BF890  3B E0 00 00 */	li r31, 0
/* 804BF894  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804BF898  7C 9E 23 78 */	mr r30, r4
lbl_804BF89C:
/* 804BF89C  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 804BF8A0  7C 60 07 35 */	extsh. r0, r3
/* 804BF8A4  41 82 00 DC */	beq lbl_804BF980
/* 804BF8A8  2C 03 00 01 */	cmpwi r3, 1
/* 804BF8AC  40 82 00 70 */	bne lbl_804BF91C
/* 804BF8B0  A8 7E 00 4E */	lha r3, 0x4e(r30)
/* 804BF8B4  38 03 FF FF */	addi r0, r3, -1
/* 804BF8B8  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 804BF8BC  A8 1E 00 4E */	lha r0, 0x4e(r30)
/* 804BF8C0  2C 00 00 00 */	cmpwi r0, 0
/* 804BF8C4  40 80 00 0C */	bge lbl_804BF8D0
/* 804BF8C8  38 00 00 00 */	li r0, 0
/* 804BF8CC  B0 1E 00 4E */	sth r0, 0x4e(r30)
lbl_804BF8D0:
/* 804BF8D0  A8 7E 00 46 */	lha r3, 0x46(r30)
/* 804BF8D4  38 80 FF FF */	li r4, -1
/* 804BF8D8  A8 1E 00 48 */	lha r0, 0x48(r30)
/* 804BF8DC  2C 03 00 00 */	cmpwi r3, 0
/* 804BF8E0  7C 03 02 14 */	add r0, r3, r0
/* 804BF8E4  B0 1E 00 46 */	sth r0, 0x46(r30)
/* 804BF8E8  41 80 00 08 */	blt lbl_804BF8F0
/* 804BF8EC  38 80 00 01 */	li r4, 1
lbl_804BF8F0:
/* 804BF8F0  A8 1E 00 46 */	lha r0, 0x46(r30)
/* 804BF8F4  38 60 FF FF */	li r3, -1
/* 804BF8F8  2C 00 00 00 */	cmpwi r0, 0
/* 804BF8FC  41 80 00 08 */	blt lbl_804BF904
/* 804BF900  38 60 00 01 */	li r3, 1
lbl_804BF904:
/* 804BF904  7C 03 20 00 */	cmpw r3, r4
/* 804BF908  41 82 00 14 */	beq lbl_804BF91C
/* 804BF90C  38 60 00 00 */	li r3, 0
/* 804BF910  38 00 00 02 */	li r0, 2
/* 804BF914  B0 7E 00 46 */	sth r3, 0x46(r30)
/* 804BF918  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_804BF91C:
/* 804BF91C  A8 7E 00 52 */	lha r3, 0x52(r30)
/* 804BF920  2C 03 00 00 */	cmpwi r3, 0
/* 804BF924  40 81 00 0C */	ble lbl_804BF930
/* 804BF928  38 03 FF FF */	addi r0, r3, -1
/* 804BF92C  B0 1E 00 52 */	sth r0, 0x52(r30)
lbl_804BF930:
/* 804BF930  A8 1E 00 52 */	lha r0, 0x52(r30)
/* 804BF934  2C 00 00 00 */	cmpwi r0, 0
/* 804BF938  41 81 00 48 */	bgt lbl_804BF980
/* 804BF93C  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 804BF940  2C 00 00 02 */	cmpwi r0, 2
/* 804BF944  40 82 00 3C */	bne lbl_804BF980
/* 804BF948  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 804BF94C  38 81 00 08 */	addi r4, r1, 8
/* 804BF950  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 804BF954  38 A0 00 01 */	li r5, 1
/* 804BF958  90 61 00 08 */	stw r3, 8(r1)
/* 804BF95C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BF960  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 804BF964  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BF968  A0 7E 00 42 */	lhz r3, 0x42(r30)
/* 804BF96C  38 03 FF F9 */	addi r0, r3, -7
/* 804BF970  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804BF974  4B EE 7E BD */	bl mFI_SetFG_common
/* 804BF978  38 00 00 00 */	li r0, 0
/* 804BF97C  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_804BF980:
/* 804BF980  3B FF 00 01 */	addi r31, r31, 1
/* 804BF984  3B DE 00 58 */	addi r30, r30, 0x58
/* 804BF988  2C 1F 00 05 */	cmpwi r31, 5
/* 804BF98C  41 80 FF 10 */	blt lbl_804BF89C
/* 804BF990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BF994  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804BF998  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804BF99C  7C 08 03 A6 */	mtlr r0
/* 804BF9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804BF9A4  4E 80 00 20 */	blr 
