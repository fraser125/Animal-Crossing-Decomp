lbl_8048FDAC:
/* 8048FDAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048FDB0  7C 08 02 A6 */	mflr r0
/* 8048FDB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048FDB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8048FDBC  4B C0 B1 15 */	bl func_8009AED0
/* 8048FDC0  7C 7C 1B 78 */	mr r28, r3
/* 8048FDC4  7C 9D 23 78 */	mr r29, r4
/* 8048FDC8  7C BE 2B 78 */	mr r30, r5
/* 8048FDCC  7C DF 33 78 */	mr r31, r6
/* 8048FDD0  4B BC CF 25 */	bl fqrand
/* 8048FDD4  7C 9E F8 50 */	subf r4, r30, r31
/* 8048FDD8  3C 00 43 30 */	lis r0, 0x4330
/* 8048FDDC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8048FDE0  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80644C34@ha */
/* 8048FDE4  C8 43 4C 34 */	lfd f2, lit_555@l(r3)  /* 0x80644C34@l */
/* 8048FDE8  90 01 00 08 */	stw r0, 8(r1)
/* 8048FDEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048FDF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048FDF4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8048FDF8  4B C0 AF AD */	bl func_8009ADA4
/* 8048FDFC  7C 9E 1A 14 */	add r4, r30, r3
/* 8048FE00  7F 83 E3 78 */	mr r3, r28
/* 8048FE04  7F A5 EB 78 */	mr r5, r29
/* 8048FE08  4B FF D9 19 */	bl aQMgr_set_number_item_str
/* 8048FE0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8048FE10  4B C0 B1 0D */	bl func_8009AF1C
/* 8048FE14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048FE18  7C 08 03 A6 */	mtlr r0
/* 8048FE1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8048FE20  4E 80 00 20 */	blr 
