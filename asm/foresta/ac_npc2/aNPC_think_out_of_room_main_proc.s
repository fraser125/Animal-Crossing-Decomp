lbl_80542B04:
/* 80542B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542B08  7C 08 02 A6 */	mflr r0
/* 80542B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80542B14  7C 9F 23 78 */	mr r31, r4
/* 80542B18  93 C1 00 08 */	stw r30, 8(r1)
/* 80542B1C  7C 7E 1B 78 */	mr r30, r3
/* 80542B20  4B FF FF 39 */	bl aNPC_think_out_of_room_chk_interrupt
/* 80542B24  2C 03 00 00 */	cmpwi r3, 0
/* 80542B28  40 82 00 74 */	bne lbl_80542B9C
/* 80542B2C  3C 60 80 65 */	lis r3, lit_3116@ha /* 0x80649444@ha */
/* 80542B30  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80542B34  C0 03 94 44 */	lfs f0, lit_3116@l(r3)  /* 0x80649444@l */
/* 80542B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80542B3C  4C 41 13 82 */	cror 2, 1, 2
/* 80542B40  40 82 00 10 */	bne lbl_80542B50
/* 80542B44  38 00 00 01 */	li r0, 1
/* 80542B48  98 1E 07 C8 */	stb r0, 0x7c8(r30)
/* 80542B4C  48 00 00 50 */	b lbl_80542B9C
lbl_80542B50:
/* 80542B50  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80542B54  28 00 00 FF */	cmplwi r0, 0xff
/* 80542B58  40 82 00 44 */	bne lbl_80542B9C
/* 80542B5C  7F C3 F3 78 */	mr r3, r30
/* 80542B60  7F E4 FB 78 */	mr r4, r31
/* 80542B64  4B FF FE 25 */	bl func_80542988
/* 80542B68  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 80542B6C  7C 65 1B 78 */	mr r5, r3
/* 80542B70  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80542B74  7C 03 00 40 */	cmplw r3, r0
/* 80542B78  40 82 00 0C */	bne lbl_80542B84
/* 80542B7C  38 00 00 00 */	li r0, 0
/* 80542B80  98 1E 07 F6 */	stb r0, 0x7f6(r30)
lbl_80542B84:
/* 80542B84  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 80542B88  7F C3 F3 78 */	mr r3, r30
/* 80542B8C  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 80542B90  38 C0 00 00 */	li r6, 0
/* 80542B94  38 80 00 01 */	li r4, 1
/* 80542B98  4B FF C8 09 */	bl aNPC_set_request_act
lbl_80542B9C:
/* 80542B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542BA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80542BA8  7C 08 03 A6 */	mtlr r0
/* 80542BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80542BB0  4E 80 00 20 */	blr 
