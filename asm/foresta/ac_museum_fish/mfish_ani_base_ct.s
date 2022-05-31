lbl_80434894:
/* 80434894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80434898  7C 08 02 A6 */	mflr r0
/* 8043489C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804348A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804348A4  7C 9F 23 78 */	mr r31, r4
/* 804348A8  93 C1 00 08 */	stw r30, 8(r1)
/* 804348AC  7C 7E 1B 78 */	mr r30, r3
/* 804348B0  4B FF FC 59 */	bl mfish_onefish_ct
/* 804348B4  7F C3 F3 78 */	mr r3, r30
/* 804348B8  7F E4 FB 78 */	mr r4, r31
/* 804348BC  4B FF F6 C5 */	bl mfish_base_ct
/* 804348C0  3C 60 80 43 */	lis r3, mfish_normal_process@ha /* 0x80432510@ha */
/* 804348C4  38 00 00 00 */	li r0, 0
/* 804348C8  38 63 25 10 */	addi r3, r3, mfish_normal_process@l /* 0x80432510@l */
/* 804348CC  90 7E 00 34 */	stw r3, 0x34(r30)
/* 804348D0  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 804348D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804348D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804348DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804348E0  7C 08 03 A6 */	mtlr r0
/* 804348E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804348E8  4E 80 00 20 */	blr 
