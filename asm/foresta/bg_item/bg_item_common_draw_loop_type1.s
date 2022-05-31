lbl_804BD9A0:
/* 804BD9A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BD9A4  7C 08 02 A6 */	mflr r0
/* 804BD9A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BD9AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804BD9B0  4B BD D5 19 */	bl func_8009AEC8
/* 804BD9B4  7C 9C 23 78 */	mr r28, r4
/* 804BD9B8  8B E5 00 05 */	lbz r31, 5(r5)
/* 804BD9BC  80 84 00 00 */	lwz r4, 0(r4)
/* 804BD9C0  3C 00 DE 00 */	lis r0, 0xde00
/* 804BD9C4  7C FE 3B 78 */	mr r30, r7
/* 804BD9C8  7C 7B 1B 78 */	mr r27, r3
/* 804BD9CC  38 64 00 08 */	addi r3, r4, 8
/* 804BD9D0  7C DD 33 78 */	mr r29, r6
/* 804BD9D4  90 7C 00 00 */	stw r3, 0(r28)
/* 804BD9D8  90 04 00 00 */	stw r0, 0(r4)
/* 804BD9DC  88 05 00 04 */	lbz r0, 4(r5)
/* 804BD9E0  54 00 10 3A */	slwi r0, r0, 2
/* 804BD9E4  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804BD9E8  90 04 00 04 */	stw r0, 4(r4)
/* 804BD9EC  48 00 00 74 */	b lbl_804BDA60
lbl_804BD9F0:
/* 804BD9F0  88 1D 00 46 */	lbz r0, 0x46(r29)
/* 804BD9F4  28 00 00 00 */	cmplwi r0, 0
/* 804BD9F8  40 82 00 5C */	bne lbl_804BDA54
/* 804BD9FC  7F A3 EB 78 */	mr r3, r29
/* 804BDA00  4B F4 E8 59 */	bl Matrix_put
/* 804BDA04  83 5C 00 00 */	lwz r26, 0(r28)
/* 804BDA08  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804BDA0C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804BDA10  7F 63 DB 78 */	mr r3, r27
/* 804BDA14  38 9A 00 08 */	addi r4, r26, 8
/* 804BDA18  90 9C 00 00 */	stw r4, 0(r28)
/* 804BDA1C  90 1A 00 00 */	stw r0, 0(r26)
/* 804BDA20  4B F4 F9 B5 */	bl _Matrix_to_Mtx_new
/* 804BDA24  90 7A 00 04 */	stw r3, 4(r26)
/* 804BDA28  3C 00 DE 00 */	lis r0, 0xde00
/* 804BDA2C  80 9C 00 00 */	lwz r4, 0(r28)
/* 804BDA30  38 64 00 08 */	addi r3, r4, 8
/* 804BDA34  90 7C 00 00 */	stw r3, 0(r28)
/* 804BDA38  90 04 00 00 */	stw r0, 0(r4)
/* 804BDA3C  88 1D 00 47 */	lbz r0, 0x47(r29)
/* 804BDA40  7C 00 07 74 */	extsb r0, r0
/* 804BDA44  7C 1F 02 14 */	add r0, r31, r0
/* 804BDA48  54 00 10 3A */	slwi r0, r0, 2
/* 804BDA4C  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804BDA50  90 04 00 04 */	stw r0, 4(r4)
lbl_804BDA54:
/* 804BDA54  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804BDA58  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804BDA5C  7F BD 02 14 */	add r29, r29, r0
lbl_804BDA60:
/* 804BDA60  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804BDA64  2C 00 01 00 */	cmpwi r0, 0x100
/* 804BDA68  40 82 FF 88 */	bne lbl_804BD9F0
/* 804BDA6C  39 61 00 20 */	addi r11, r1, 0x20
/* 804BDA70  4B BD D4 A5 */	bl func_8009AF14
/* 804BDA74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BDA78  7C 08 03 A6 */	mtlr r0
/* 804BDA7C  38 21 00 20 */	addi r1, r1, 0x20
/* 804BDA80  4E 80 00 20 */	blr 
