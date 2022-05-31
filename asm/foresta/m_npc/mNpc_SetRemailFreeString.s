lbl_803CD5F0:
/* 803CD5F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CD5F4  7C 08 02 A6 */	mflr r0
/* 803CD5F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CD5FC  39 61 00 30 */	addi r11, r1, 0x30
/* 803CD600  4B CC D8 D1 */	bl func_8009AED0
/* 803CD604  7C 60 1B 78 */	mr r0, r3
/* 803CD608  7C 9D 23 78 */	mr r29, r4
/* 803CD60C  7C BC 2B 78 */	mr r28, r5
/* 803CD610  38 60 00 00 */	li r3, 0
/* 803CD614  7C 04 03 78 */	mr r4, r0
/* 803CD618  38 A0 00 08 */	li r5, 8
/* 803CD61C  4B FE 43 3D */	bl mHandbill_Set_free_str
/* 803CD620  28 1C 00 00 */	cmplwi r28, 0
/* 803CD624  40 82 00 54 */	bne lbl_803CD678
/* 803CD628  7F A4 EB 78 */	mr r4, r29
/* 803CD62C  38 61 00 08 */	addi r3, r1, 8
/* 803CD630  48 00 43 21 */	bl mNpc_GetNpcWorldNameAnm
/* 803CD634  38 81 00 08 */	addi r4, r1, 8
/* 803CD638  38 60 00 01 */	li r3, 1
/* 803CD63C  38 A0 00 08 */	li r5, 8
/* 803CD640  4B FE 43 19 */	bl mHandbill_Set_free_str
/* 803CD644  7F A3 EB 78 */	mr r3, r29
/* 803CD648  38 80 00 01 */	li r4, 1
/* 803CD64C  4B FF F4 51 */	bl mNpc_GetOtherAnimalPersonalID
/* 803CD650  28 03 00 00 */	cmplwi r3, 0
/* 803CD654  41 82 00 80 */	beq lbl_803CD6D4
/* 803CD658  7C 64 1B 78 */	mr r4, r3
/* 803CD65C  38 61 00 08 */	addi r3, r1, 8
/* 803CD660  48 00 42 F1 */	bl mNpc_GetNpcWorldNameAnm
/* 803CD664  38 81 00 08 */	addi r4, r1, 8
/* 803CD668  38 60 00 02 */	li r3, 2
/* 803CD66C  38 A0 00 08 */	li r5, 8
/* 803CD670  4B FE 42 E9 */	bl mHandbill_Set_free_str
/* 803CD674  48 00 00 60 */	b lbl_803CD6D4
lbl_803CD678:
/* 803CD678  38 9C 00 04 */	addi r4, r28, 4
/* 803CD67C  38 60 00 01 */	li r3, 1
/* 803CD680  38 A0 00 08 */	li r5, 8
/* 803CD684  4B FE 42 D5 */	bl mHandbill_Set_free_str
/* 803CD688  38 60 00 00 */	li r3, 0
/* 803CD68C  38 80 00 00 */	li r4, 0
/* 803CD690  4B FF F4 0D */	bl mNpc_GetOtherAnimalPersonalID
/* 803CD694  7C 64 1B 78 */	mr r4, r3
/* 803CD698  38 61 00 08 */	addi r3, r1, 8
/* 803CD69C  48 00 42 B5 */	bl mNpc_GetNpcWorldNameAnm
/* 803CD6A0  38 81 00 08 */	addi r4, r1, 8
/* 803CD6A4  38 60 00 02 */	li r3, 2
/* 803CD6A8  38 A0 00 08 */	li r5, 8
/* 803CD6AC  4B FE 42 AD */	bl mHandbill_Set_free_str
/* 803CD6B0  38 9C 00 0C */	addi r4, r28, 0xc
/* 803CD6B4  38 60 00 0E */	li r3, 0xe
/* 803CD6B8  38 A0 00 08 */	li r5, 8
/* 803CD6BC  4B FE 42 9D */	bl mHandbill_Set_free_str
/* 803CD6C0  4B FE 63 DD */	bl mLd_GetLandName
/* 803CD6C4  7C 64 1B 78 */	mr r4, r3
/* 803CD6C8  38 60 00 0F */	li r3, 0xf
/* 803CD6CC  38 A0 00 08 */	li r5, 8
/* 803CD6D0  4B FE 42 89 */	bl mHandbill_Set_free_str
lbl_803CD6D4:
/* 803CD6D4  3C 80 80 66 */	lis r4, rand_max_table@ha /* 0x8065B220@ha */
/* 803CD6D8  3C 60 80 66 */	lis r3, base_str_no@ha /* 0x8065B1F4@ha */
/* 803CD6DC  3B A4 B2 20 */	addi r29, r4, rand_max_table@l /* 0x8065B220@l */
/* 803CD6E0  3B 80 00 00 */	li r28, 0
/* 803CD6E4  3B C3 B1 F4 */	addi r30, r3, base_str_no@l /* 0x8065B1F4@l */
/* 803CD6E8  3B E0 00 00 */	li r31, 0
lbl_803CD6EC:
/* 803CD6EC  4B C8 F6 09 */	bl fqrand
/* 803CD6F0  7C 1D FC 2E */	lfsx f0, r29, r31
/* 803CD6F4  38 61 00 08 */	addi r3, r1, 8
/* 803CD6F8  7C 1E F8 2E */	lwzx r0, r30, r31
/* 803CD6FC  38 80 00 10 */	li r4, 0x10
/* 803CD700  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD704  FC 00 00 1E */	fctiwz f0, f0
/* 803CD708  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803CD70C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 803CD710  7C A5 02 14 */	add r5, r5, r0
/* 803CD714  48 02 15 B9 */	bl mString_Load_StringFromRom
/* 803CD718  38 7C 00 03 */	addi r3, r28, 3
/* 803CD71C  38 81 00 08 */	addi r4, r1, 8
/* 803CD720  38 A0 00 10 */	li r5, 0x10
/* 803CD724  4B FE 42 35 */	bl mHandbill_Set_free_str
/* 803CD728  3B 9C 00 01 */	addi r28, r28, 1
/* 803CD72C  3B FF 00 04 */	addi r31, r31, 4
/* 803CD730  2C 1C 00 0B */	cmpwi r28, 0xb
/* 803CD734  41 80 FF B8 */	blt lbl_803CD6EC
/* 803CD738  39 61 00 30 */	addi r11, r1, 0x30
/* 803CD73C  4B CC D7 E1 */	bl func_8009AF1C
/* 803CD740  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CD744  7C 08 03 A6 */	mtlr r0
/* 803CD748  38 21 00 30 */	addi r1, r1, 0x30
/* 803CD74C  4E 80 00 20 */	blr 
