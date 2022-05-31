lbl_804CA2F4:
/* 804CA2F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CA2F8  7C 08 02 A6 */	mflr r0
/* 804CA2FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CA300  39 61 00 20 */	addi r11, r1, 0x20
/* 804CA304  4B BD 0B CD */	bl func_8009AED0
/* 804CA308  7C 9E 23 78 */	mr r30, r4
/* 804CA30C  88 85 00 44 */	lbz r4, 0x44(r5)
/* 804CA310  89 06 00 05 */	lbz r8, 5(r6)
/* 804CA314  7C 7D 1B 78 */	mr r29, r3
/* 804CA318  7C 83 07 74 */	extsb r3, r4
/* 804CA31C  80 9E 00 00 */	lwz r4, 0(r30)
/* 804CA320  7C 68 1A 14 */	add r3, r8, r3
/* 804CA324  3C 00 DE 00 */	lis r0, 0xde00
/* 804CA328  54 68 10 3A */	slwi r8, r3, 2
/* 804CA32C  7F E7 40 2E */	lwzx r31, r7, r8
/* 804CA330  38 64 00 08 */	addi r3, r4, 8
/* 804CA334  90 7E 00 00 */	stw r3, 0(r30)
/* 804CA338  90 04 00 00 */	stw r0, 0(r4)
/* 804CA33C  88 06 00 04 */	lbz r0, 4(r6)
/* 804CA340  54 00 10 3A */	slwi r0, r0, 2
/* 804CA344  7C 07 00 2E */	lwzx r0, r7, r0
/* 804CA348  90 04 00 04 */	stw r0, 4(r4)
/* 804CA34C  88 05 00 42 */	lbz r0, 0x42(r5)
/* 804CA350  28 00 00 FF */	cmplwi r0, 0xff
/* 804CA354  40 82 00 4C */	bne lbl_804CA3A0
/* 804CA358  80 FE 00 00 */	lwz r7, 0(r30)
/* 804CA35C  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE200001C@ha */
/* 804CA360  3C 80 C8 11 */	lis r4, 0xC811 /* 0xC8113078@ha */
/* 804CA364  3C 60 FC 12 */	lis r3, 0xFC12 /* 0xFC127E60@ha */
/* 804CA368  38 07 00 08 */	addi r0, r7, 8
/* 804CA36C  38 C6 00 1C */	addi r6, r6, 0x001C /* 0xE200001C@l */
/* 804CA370  90 1E 00 00 */	stw r0, 0(r30)
/* 804CA374  38 84 30 78 */	addi r4, r4, 0x3078 /* 0xC8113078@l */
/* 804CA378  38 63 7E 60 */	addi r3, r3, 0x7E60 /* 0xFC127E60@l */
/* 804CA37C  38 00 F3 F8 */	li r0, -3080
/* 804CA380  90 C7 00 00 */	stw r6, 0(r7)
/* 804CA384  90 87 00 04 */	stw r4, 4(r7)
/* 804CA388  80 DE 00 00 */	lwz r6, 0(r30)
/* 804CA38C  38 86 00 08 */	addi r4, r6, 8
/* 804CA390  90 9E 00 00 */	stw r4, 0(r30)
/* 804CA394  90 66 00 00 */	stw r3, 0(r6)
/* 804CA398  90 06 00 04 */	stw r0, 4(r6)
/* 804CA39C  48 00 00 6C */	b lbl_804CA408
lbl_804CA3A0:
/* 804CA3A0  81 1E 00 00 */	lwz r8, 0(r30)
/* 804CA3A4  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE200001C@ha */
/* 804CA3A8  3C 80 C8 10 */	lis r4, 0xC810 /* 0xC81049D8@ha */
/* 804CA3AC  3C 60 FC 12 */	lis r3, 0xFC12 /* 0xFC121A60@ha */
/* 804CA3B0  38 E8 00 08 */	addi r7, r8, 8
/* 804CA3B4  38 06 00 1C */	addi r0, r6, 0x001C /* 0xE200001C@l */
/* 804CA3B8  90 FE 00 00 */	stw r7, 0(r30)
/* 804CA3BC  38 C4 49 D8 */	addi r6, r4, 0x49D8 /* 0xC81049D8@l */
/* 804CA3C0  38 83 1A 60 */	addi r4, r3, 0x1A60 /* 0xFC121A60@l */
/* 804CA3C4  38 60 FF F8 */	li r3, -8
/* 804CA3C8  90 08 00 00 */	stw r0, 0(r8)
/* 804CA3CC  3C 00 FB 00 */	lis r0, 0xfb00
/* 804CA3D0  90 C8 00 04 */	stw r6, 4(r8)
/* 804CA3D4  80 FE 00 00 */	lwz r7, 0(r30)
/* 804CA3D8  38 C7 00 08 */	addi r6, r7, 8
/* 804CA3DC  90 DE 00 00 */	stw r6, 0(r30)
/* 804CA3E0  90 87 00 00 */	stw r4, 0(r7)
/* 804CA3E4  90 67 00 04 */	stw r3, 4(r7)
/* 804CA3E8  80 9E 00 00 */	lwz r4, 0(r30)
/* 804CA3EC  38 64 00 08 */	addi r3, r4, 8
/* 804CA3F0  90 7E 00 00 */	stw r3, 0(r30)
/* 804CA3F4  90 04 00 00 */	stw r0, 0(r4)
/* 804CA3F8  88 05 00 42 */	lbz r0, 0x42(r5)
/* 804CA3FC  64 00 FF FF */	oris r0, r0, 0xffff
/* 804CA400  60 00 FF 00 */	ori r0, r0, 0xff00
/* 804CA404  90 04 00 04 */	stw r0, 4(r4)
lbl_804CA408:
/* 804CA408  7C A3 2B 78 */	mr r3, r5
/* 804CA40C  4B F4 1E 4D */	bl Matrix_put
/* 804CA410  83 9E 00 00 */	lwz r28, 0(r30)
/* 804CA414  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CA418  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804CA41C  7F A3 EB 78 */	mr r3, r29
/* 804CA420  38 9C 00 08 */	addi r4, r28, 8
/* 804CA424  90 9E 00 00 */	stw r4, 0(r30)
/* 804CA428  90 1C 00 00 */	stw r0, 0(r28)
/* 804CA42C  4B F4 2F A9 */	bl _Matrix_to_Mtx_new
/* 804CA430  90 7C 00 04 */	stw r3, 4(r28)
/* 804CA434  3C 00 DE 00 */	lis r0, 0xde00
/* 804CA438  80 9E 00 00 */	lwz r4, 0(r30)
/* 804CA43C  38 64 00 08 */	addi r3, r4, 8
/* 804CA440  90 7E 00 00 */	stw r3, 0(r30)
/* 804CA444  90 04 00 00 */	stw r0, 0(r4)
/* 804CA448  93 E4 00 04 */	stw r31, 4(r4)
/* 804CA44C  39 61 00 20 */	addi r11, r1, 0x20
/* 804CA450  4B BD 0A CD */	bl func_8009AF1C
/* 804CA454  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CA458  7C 08 03 A6 */	mtlr r0
/* 804CA45C  38 21 00 20 */	addi r1, r1, 0x20
/* 804CA460  4E 80 00 20 */	blr 
