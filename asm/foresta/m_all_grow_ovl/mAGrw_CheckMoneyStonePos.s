lbl_8050FCA0:
/* 8050FCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050FCA4  7C 08 02 A6 */	mflr r0
/* 8050FCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050FCAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050FCB0  3B E0 00 00 */	li r31, 0
/* 8050FCB4  93 C1 00 08 */	stw r30, 8(r1)
/* 8050FCB8  7C 7E 1B 78 */	mr r30, r3
/* 8050FCBC  4B FF FB 41 */	bl mAGrw_CheckFreeSSPosInfo_com
/* 8050FCC0  2C 03 00 00 */	cmpwi r3, 0
/* 8050FCC4  40 82 00 98 */	bne lbl_8050FD5C
/* 8050FCC8  88 BE 00 00 */	lbz r5, 0(r30)
/* 8050FCCC  28 05 00 00 */	cmplwi r5, 0
/* 8050FCD0  41 82 00 8C */	beq lbl_8050FD5C
/* 8050FCD4  28 05 00 06 */	cmplwi r5, 6
/* 8050FCD8  40 80 00 84 */	bge lbl_8050FD5C
/* 8050FCDC  88 7E 00 01 */	lbz r3, 1(r30)
/* 8050FCE0  28 03 00 00 */	cmplwi r3, 0
/* 8050FCE4  41 82 00 78 */	beq lbl_8050FD5C
/* 8050FCE8  28 03 00 07 */	cmplwi r3, 7
/* 8050FCEC  40 80 00 70 */	bge lbl_8050FD5C
/* 8050FCF0  88 DE 00 02 */	lbz r6, 2(r30)
/* 8050FCF4  28 06 00 10 */	cmplwi r6, 0x10
/* 8050FCF8  40 80 00 64 */	bge lbl_8050FD5C
/* 8050FCFC  88 FE 00 03 */	lbz r7, 3(r30)
/* 8050FD00  28 07 00 10 */	cmplwi r7, 0x10
/* 8050FD04  40 80 00 58 */	bge lbl_8050FD5C
/* 8050FD08  38 03 FF FF */	addi r0, r3, -1
/* 8050FD0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FD10  1C 80 0A 00 */	mulli r4, r0, 0xa00
/* 8050FD14  38 05 FF FF */	addi r0, r5, -1
/* 8050FD18  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FD1C  54 00 48 2C */	slwi r0, r0, 9
/* 8050FD20  7C 83 22 14 */	add r4, r3, r4
/* 8050FD24  54 E3 2C F4 */	rlwinm r3, r7, 5, 0x13, 0x1a
/* 8050FD28  7C 84 02 14 */	add r4, r4, r0
/* 8050FD2C  54 C0 0D FC */	rlwinm r0, r6, 1, 0x17, 0x1e
/* 8050FD30  3C 84 00 01 */	addis r4, r4, 1
/* 8050FD34  7C 64 1A 14 */	add r3, r4, r3
/* 8050FD38  7C 63 02 14 */	add r3, r3, r0
/* 8050FD3C  A0 03 37 A8 */	lhz r0, 0x37a8(r3)
/* 8050FD40  28 00 00 6A */	cmplwi r0, 0x6a
/* 8050FD44  41 80 00 0C */	blt lbl_8050FD50
/* 8050FD48  28 00 00 6E */	cmplwi r0, 0x6e
/* 8050FD4C  40 81 00 0C */	ble lbl_8050FD58
lbl_8050FD50:
/* 8050FD50  28 00 00 6F */	cmplwi r0, 0x6f
/* 8050FD54  40 82 00 08 */	bne lbl_8050FD5C
lbl_8050FD58:
/* 8050FD58  3B E0 00 01 */	li r31, 1
lbl_8050FD5C:
/* 8050FD5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050FD60  7F E3 FB 78 */	mr r3, r31
/* 8050FD64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050FD68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050FD6C  7C 08 03 A6 */	mtlr r0
/* 8050FD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8050FD74  4E 80 00 20 */	blr 
