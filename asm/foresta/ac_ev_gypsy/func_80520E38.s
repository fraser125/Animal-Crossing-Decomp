lbl_80520E38:
/* 80520E38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80520E3C  7C 08 02 A6 */	mflr r0
/* 80520E40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80520E44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80520E48  7C 7F 1B 78 */	mr r31, r3
/* 80520E4C  4B B3 BE A9 */	bl fqrand
/* 80520E50  3C 80 80 65 */	lis r4, lit_477@ha /* 0x80649144@ha */
/* 80520E54  3C 60 80 6A */	lis r3, string_num@ha /* 0x806A0878@ha */
/* 80520E58  C0 04 91 44 */	lfs f0, lit_477@l(r4)  /* 0x80649144@l */
/* 80520E5C  57 E0 10 3A */	slwi r0, r31, 2
/* 80520E60  38 63 08 78 */	addi r3, r3, string_num@l /* 0x806A0878@l */
/* 80520E64  38 80 00 10 */	li r4, 0x10
/* 80520E68  EC 00 00 72 */	fmuls f0, f0, f1
/* 80520E6C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80520E70  38 61 00 08 */	addi r3, r1, 8
/* 80520E74  FC 00 00 1E */	fctiwz f0, f0
/* 80520E78  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80520E7C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80520E80  7C A0 2A 14 */	add r5, r0, r5
/* 80520E84  4B EC DE 49 */	bl mString_Load_StringFromRom
/* 80520E88  4B E9 E8 21 */	bl func_803BF6A8
/* 80520E8C  7F E4 FB 78 */	mr r4, r31
/* 80520E90  38 A1 00 08 */	addi r5, r1, 8
/* 80520E94  38 C0 00 10 */	li r6, 0x10
/* 80520E98  4B E9 EF 3D */	bl mMsg_Set_item_str
/* 80520E9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80520EA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80520EA4  7C 08 03 A6 */	mtlr r0
/* 80520EA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80520EAC  4E 80 00 20 */	blr 
