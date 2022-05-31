lbl_80598B60:
/* 80598B60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80598B64  7C 08 02 A6 */	mflr r0
/* 80598B68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80598B6C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80598B70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80598B74  7C 9F 23 78 */	mr r31, r4
/* 80598B78  38 81 00 08 */	addi r4, r1, 8
/* 80598B7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80598B80  7C 7E 1B 78 */	mr r30, r3
/* 80598B84  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 80598B88  38 61 00 0C */	addi r3, r1, 0xc
/* 80598B8C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80598B90  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80598B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598B98  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80598B9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80598BA0  4B E0 C7 C9 */	bl mFI_Wpos2UtNum
/* 80598BA4  2C 03 00 01 */	cmpwi r3, 1
/* 80598BA8  40 82 00 A0 */	bne lbl_80598C48
/* 80598BAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80598BB0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80598BB4  2C 00 00 01 */	cmpwi r0, 1
/* 80598BB8  41 80 00 34 */	blt lbl_80598BEC
/* 80598BBC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80598BC0  40 80 00 2C */	bge lbl_80598BEC
/* 80598BC4  80 01 00 08 */	lwz r0, 8(r1)
/* 80598BC8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80598BCC  2C 00 00 01 */	cmpwi r0, 1
/* 80598BD0  41 80 00 1C */	blt lbl_80598BEC
/* 80598BD4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80598BD8  40 80 00 14 */	bge lbl_80598BEC
/* 80598BDC  7F C3 F3 78 */	mr r3, r30
/* 80598BE0  7F E4 FB 78 */	mr r4, r31
/* 80598BE4  4B FF FE F1 */	bl aICH_avoid_player
/* 80598BE8  48 00 00 6C */	b lbl_80598C54
lbl_80598BEC:
/* 80598BEC  88 9E 00 08 */	lbz r4, 8(r30)
/* 80598BF0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80598BF4  88 BE 00 09 */	lbz r5, 9(r30)
/* 80598BF8  38 C0 00 08 */	li r6, 8
/* 80598BFC  7C 84 07 74 */	extsb r4, r4
/* 80598C00  38 E0 00 08 */	li r7, 8
/* 80598C04  7C A5 07 74 */	extsb r5, r5
/* 80598C08  4B E0 D0 5D */	bl mFI_BkandUtNum2Wpos
/* 80598C0C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80598C10  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80598C14  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80598C18  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80598C1C  EC 23 08 28 */	fsubs f1, f3, f1
/* 80598C20  EC 42 00 28 */	fsubs f2, f2, f0
/* 80598C24  4B E7 33 DD */	bl atans_table
/* 80598C28  7C 60 1B 78 */	mr r0, r3
/* 80598C2C  38 7E 00 DE */	addi r3, r30, 0xde
/* 80598C30  7C 04 07 34 */	extsh r4, r0
/* 80598C34  38 A0 06 00 */	li r5, 0x600
/* 80598C38  4B E2 1F 0D */	bl chase_angle
/* 80598C3C  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 80598C40  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 80598C44  48 00 00 10 */	b lbl_80598C54
lbl_80598C48:
/* 80598C48  7F C3 F3 78 */	mr r3, r30
/* 80598C4C  7F E4 FB 78 */	mr r4, r31
/* 80598C50  4B FF FE 85 */	bl aICH_avoid_player
lbl_80598C54:
/* 80598C54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80598C58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80598C5C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80598C60  7C 08 03 A6 */	mtlr r0
/* 80598C64  38 21 00 30 */	addi r1, r1, 0x30
/* 80598C68  4E 80 00 20 */	blr 
