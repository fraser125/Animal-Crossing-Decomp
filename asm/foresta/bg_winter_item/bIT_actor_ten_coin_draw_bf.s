lbl_804BF9EC:
/* 804BF9EC  81 23 00 00 */	lwz r9, 0(r3)
/* 804BF9F0  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA000080@ha */
/* 804BF9F4  3C E0 E7 00 */	lis r7, 0xe700
/* 804BF9F8  38 C0 00 00 */	li r6, 0
/* 804BF9FC  39 09 00 08 */	addi r8, r9, 8
/* 804BFA00  38 05 00 80 */	addi r0, r5, 0x0080 /* 0xFA000080@l */
/* 804BFA04  91 03 00 00 */	stw r8, 0(r3)
/* 804BFA08  90 E9 00 00 */	stw r7, 0(r9)
/* 804BFA0C  90 C9 00 04 */	stw r6, 4(r9)
/* 804BFA10  80 E3 00 00 */	lwz r7, 0(r3)
/* 804BFA14  38 A7 00 08 */	addi r5, r7, 8
/* 804BFA18  90 A3 00 00 */	stw r5, 0(r3)
/* 804BFA1C  38 60 00 01 */	li r3, 1
/* 804BFA20  90 07 00 00 */	stw r0, 0(r7)
/* 804BFA24  88 04 00 01 */	lbz r0, 1(r4)
/* 804BFA28  88 A4 00 00 */	lbz r5, 0(r4)
/* 804BFA2C  88 C4 00 02 */	lbz r6, 2(r4)
/* 804BFA30  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804BFA34  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 804BFA38  88 84 00 03 */	lbz r4, 3(r4)
/* 804BFA3C  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 804BFA40  50 80 06 3E */	rlwimi r0, r4, 0, 0x18, 0x1f
/* 804BFA44  90 07 00 04 */	stw r0, 4(r7)
/* 804BFA48  4E 80 00 20 */	blr 
