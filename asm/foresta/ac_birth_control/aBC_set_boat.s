lbl_80414B98:
/* 80414B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80414B9C  7C 08 02 A6 */	mflr r0
/* 80414BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80414BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80414BA8  7C 7F 1B 78 */	mr r31, r3
/* 80414BAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80414BB0  7C 9E 23 78 */	mr r30, r4
/* 80414BB4  4B F8 63 05 */	bl mEv_CheckTitleDemo
/* 80414BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80414BBC  41 81 00 68 */	bgt lbl_80414C24
/* 80414BC0  7F E3 FB 78 */	mr r3, r31
/* 80414BC4  7F C4 F3 78 */	mr r4, r30
/* 80414BC8  4B FF FF 39 */	bl aBC_chk_near_boat_block
/* 80414BCC  2C 03 00 01 */	cmpwi r3, 1
/* 80414BD0  40 82 00 54 */	bne lbl_80414C24
/* 80414BD4  38 60 00 55 */	li r3, 0x55
/* 80414BD8  38 80 00 6A */	li r4, 0x6a
/* 80414BDC  4B F9 26 A5 */	bl mFI_UtNum2UtFG
/* 80414BE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80414BE4  41 82 00 48 */	beq lbl_80414C2C
/* 80414BE8  A3 DF 00 00 */	lhz r30, 0(r31)
/* 80414BEC  4B C3 4C 11 */	bl mGcgba_ConnectEnabled
/* 80414BF0  2C 03 00 09 */	cmpwi r3, 9
/* 80414BF4  41 82 00 28 */	beq lbl_80414C1C
/* 80414BF8  40 80 00 1C */	bge lbl_80414C14
/* 80414BFC  2C 03 00 01 */	cmpwi r3, 1
/* 80414C00  41 82 00 08 */	beq lbl_80414C08
/* 80414C04  48 00 00 10 */	b lbl_80414C14
lbl_80414C08:
/* 80414C08  4B C3 4B B5 */	bl mGcgba_InitVar
/* 80414C0C  3B C0 58 4F */	li r30, 0x584f
/* 80414C10  48 00 00 0C */	b lbl_80414C1C
lbl_80414C14:
/* 80414C14  4B C3 4B A9 */	bl mGcgba_InitVar
/* 80414C18  3B C0 00 00 */	li r30, 0
lbl_80414C1C:
/* 80414C1C  B3 DF 00 00 */	sth r30, 0(r31)
/* 80414C20  48 00 00 0C */	b lbl_80414C2C
lbl_80414C24:
/* 80414C24  38 00 00 00 */	li r0, 0
/* 80414C28  90 1F 01 80 */	stw r0, 0x180(r31)
lbl_80414C2C:
/* 80414C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80414C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80414C34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80414C38  7C 08 03 A6 */	mtlr r0
/* 80414C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80414C40  4E 80 00 20 */	blr 
